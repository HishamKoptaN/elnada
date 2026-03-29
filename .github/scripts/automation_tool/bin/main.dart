import 'dart:io';
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:abujena_automation/injection.dart';
import 'package:abujena_automation/core/config.dart';
import 'package:abujena_automation/core/services/telegram_service.dart';
import 'package:abujena_automation/features/deploy/deploy_bloc.dart';
import 'package:abujena_automation/features/build_engine/build_bloc.dart';
import 'package:abujena_automation/features/shorebird/present/bloc/shorebird_bloc.dart';
import 'package:abujena_automation/features/firebase/present/bloc/firebase_cleanup_bloc.dart';

/// Sets GitHub Actions output
void setGithubOutput(String name, String value) {
  final githubOutput = Platform.environment['GITHUB_OUTPUT'];
  if (githubOutput != null && githubOutput.isNotEmpty) {
    final file = File(githubOutput);
    file.writeAsStringSync('$name=$value\n', mode: FileMode.append);
  }
  print('::set-output name=$name::$value');
}

/// Sets multiple GitHub outputs at once
void setOutputs(Map<String, String> outputs) {
  outputs.forEach((key, value) {
    setGithubOutput(key, value);
  });
}

void main(List<String> arguments) async {
  configureDependencies();
  final command = arguments.isNotEmpty ? arguments.first : 'deploy';

  try {
    switch (command) {
      case 'deploy':
        await DeploymentRunner().run();
        break;
      case 'build':
        await BuildRunner().run();
        break;
      case 'cleanup':
        await CleanupRunner().run();
        break;
      default:
        print('Unknown command: $command');
        exit(1);
    }
  } catch (e, stackTrace) {
    print('Error: $e');
    print(stackTrace);
    exit(1);
  }
}

/// Orchestrates the full deployment flow
class DeploymentRunner {
  final DeployBloc _deployBloc = getIt<DeployBloc>();
  final BuildBloc _buildBloc = getIt<BuildBloc>();
  final ShorebirdBloc _shorebirdBloc = getIt<ShorebirdBloc>();
  final CleanupBloc _cleanupBloc = getIt<FirebaseCleanupBloc>();
  final TelegramService _telegram = getIt<TelegramService>();

  Future<void> run() async {
    _setupLogging();

    try {
      await for (final state in _deployBloc.stream) {
        final shouldContinue = await _handleDeployState(state);
        if (!shouldContinue) break;
      }
    } finally {
      _deployBloc.close();
      _buildBloc.close();
      _shorebirdBloc.close();
      _cleanupBloc.close();
    }
  }

  /// Handles deploy states and returns true to continue, false to stop
  Future<bool> _handleDeployState(DeployState state) async {
    return state.map(
      initial: (_) => true,
      loading: (s) {
        print('⏳ ${s.message}');
        return true;
      },
      building: (_) {
        print('🔨 بدء البناء...');
        _buildBloc.add(const BuildEvent.started());
        return true;
      },
      buildSuccess: (s) {
        print('✅ تم البناء: ${s.outputPath}');
        return true;
      },
      checkingVersion: (_) {
        print('🔍 فحص الإصدار...');
        _shorebirdBloc.add(const ShorebirdEvent.started());
        return true;
      },
      deployingPatch: (_) {
        print('🩹 نشر الباتش...');
        return true;
      },
      patchSuccess: (_) {
        print('✅ تم نشر الباتش بنجاح');
        _notifySuccess(isPatch: true);
        return true;
      },
      deployingRelease: (_) {
        print('🚀 نشر النسخة الجديدة...');
        return true;
      },
      releaseSuccess: (s) {
        print('✅ تم نشر النسخة ${s.version.cleanVersion}');
        setOutputs({
          'is_new_release': 'true',
          'version': s.version.cleanVersion,
        });
        _notifySuccess(isPatch: false, version: s.version.cleanVersion);
        return true;
      },
      cleaningFirebase: (_) {
        print('🧹 تنظيف الإصدارات القديمة...');
        _cleanupBloc.add(const FirebaseCleanupEvent.started());
        return true;
      },
      cleanupSuccess: (s) {
        print('✅ تم حذف ${s.deletedCount} إصدار قديم');
        return true;
      },
      completed: (_) {
        print('🎉 Deployment completed!');
        return false; // Stop listening
      },
      failure: (s) {
        print('❌ فشل في [${s.step}]: ${s.error}');
        print('::error::${s.step}: ${s.error}');
        _telegram.sendFailureNotification(
          appName: 'abujena_dawajen',
          error: s.error,
          stage: s.step,
        );
        throw Exception('Deployment failed: ${s.error}');
      },
    );
  }

  void _setupLogging() {
    // Build logging
    _buildBloc.stream.listen((state) {
      state.whenOrNull(
        building: (p) => print('   📦 بناء $p...'),
        success: (p, path) => print('   ✅ $path'),
        failure: (p, e) => print('   ❌ فشل $p: $e'),
      );
    });

    // Shorebird logging
    _shorebirdBloc.stream.listen((state) {
      state.whenOrNull(
        checkingVersion: () => print('   🔍 فحص إصدارات Shorebird...'),
        patchReady: () => print('   🩹 جاهز للباتش'),
        releaseReady: () => print('   🚀 جاهز للإصدار الجديد'),
        deployingPatch: () => print('   📤 نشر الباتش...'),
        patchSuccess: () => print('   ✅ تم نشر الباتش'),
        deployingRelease: () => print('   📤 نشر الإصدار...'),
        releaseSuccess: (v) => print('   ✅ تم نشر ${v.cleanVersion}'),
        failure: (e) => print('   ❌ فشل: $e'),
      );
    });

    // Cleanup logging
    _cleanupBloc.stream.listen((state) {
      state.whenOrNull(
        loading: () => print('   🧹 جاري التنظيف...'),
        success: (d, r) => print('   ✅ تم حذف $d - $r متبقي'),
        failure: (e) => print('   ❌ فشل التنظيف: $e'),
      );
    });

    // Start deployment
    _deployBloc.add(const DeployEvent.started());
  }

  void _notifySuccess({required bool isPatch, String? version}) {
    final flavor = Platform.environment['FLAVOR'] ?? 'prod';
    _telegram.sendDeploymentNotification(
      appName: 'abujena_dawajen ($flavor)',
      version: version ?? '1.0.0',
      platform: 'Android',
      isPatch: isPatch,
    );
  }
}

/// Handles build-only operations
class BuildRunner {
  final BuildBloc _buildBloc = getIt<BuildBloc>();

  Future<void> run() async {
    try {
      await for (final state in _buildBloc.stream) {
        final shouldContinue = await _handleState(state);
        if (!shouldContinue) break;
      }
    } finally {
      _buildBloc.close();
    }
  }

  Future<bool> _handleState(BuildState state) async {
    return state.map(
      initial: (_) => true,
      building: (s) {
        print('📦 بناء ${s.platform}...');
        return true;
      },
      success: (s) {
        print('✅ تم بناء ${s.platform}: ${s.outputPath}');
        setGithubOutput('apk_path', s.outputPath);
        return false;
      },
      failure: (s) {
        print('❌ فشل بناء ${s.platform}: ${s.error}');
        print('::error::build_${s.platform}: ${s.error}');
        throw Exception('Build failed: ${s.error}');
      },
    );
  }
}

/// Handles cleanup-only operations
class CleanupRunner {
  final CleanupBloc _cleanupBloc = getIt<FirebaseCleanupBloc>();

  Future<void> run() async {
    try {
      await for (final state in _cleanupBloc.stream) {
        final shouldContinue = await _handleState(state);
        if (!shouldContinue) break;
      }
    } finally {
      _cleanupBloc.close();
    }
  }

  Future<bool> _handleState(CleanupState state) async {
    return state.map(
      initial: (_) => true,
      loading: (_) {
        print('🧹 تنظيف Firebase...');
        return true;
      },
      success: (s) {
        print('✅ تم حذف ${s.deleted} إصدار - ${s.remaining} متبقي');
        setOutputs({
          'deleted_count': s.deleted.toString(),
          'remaining_count': s.remaining.toString(),
        });
        return false;
      },
      failure: (s) {
        print('❌ فشل التنظيف: ${s.error}');
        print('::error::cleanup: ${s.error}');
        throw Exception('Cleanup failed: ${s.error}');
      },
    );
  }
}

// Type alias for FirebaseCleanupBloc
typedef CleanupBloc = FirebaseCleanupBloc;
