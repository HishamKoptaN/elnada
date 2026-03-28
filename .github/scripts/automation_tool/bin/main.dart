import 'dart:io';
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:abujena_automation/injection.dart';
import 'package:abujena_automation/core/config.dart';
import 'package:abujena_automation/features/deploy/deploy_bloc.dart';
import 'package:abujena_automation/features/build_engine/build_bloc.dart';
import 'package:abujena_automation/features/shorebird/present/bloc/shorebird_bloc.dart';
import 'package:abujena_automation/features/firebase/present/bloc/firebase_cleanup_bloc.dart';

void setGithubOutput(String name, String value) {
  final githubOutput = Platform.environment['GITHUB_OUTPUT'];
  if (githubOutput != null && githubOutput.isNotEmpty) {
    final file = File(githubOutput);
    file.writeAsStringSync('$name=$value\n', mode: FileMode.append);
  }
  // Fallback to legacy syntax for compatibility
  print('::set-output name=$name::$value');
}

void main(List<String> arguments) async {
  configureDependencies();

  final config = AutomationConfig.fromEnvironment();
  final command = arguments.isNotEmpty ? arguments.first : 'deploy';

  try {
    switch (command) {
      case 'deploy':
        await _runFullDeployment();
        break;
      case 'build':
        await _runBuildOnly();
        break;
      case 'cleanup':
        await _runCleanupOnly();
        break;
      default:
        exit(1);
    }
  } catch (e, stackTrace) {
    print('Error: $e');
    print(stackTrace);
    exit(1);
  }
}

Future<void> _runFullDeployment() async {
  final deployBloc = getIt<DeployBloc>();
  final buildBloc = getIt<BuildBloc>();
  final shorebirdBloc = getIt<ShorebirdBloc>();
  final cleanupBloc = getIt<FirebaseCleanupBloc>();

  final completer = SafeCompleter<void>();
  String? apkPath;
  bool isNewRelease = false;

  // Listen to DeployBloc orchestration
  deployBloc.stream.listen((state) {
    state.when(
      initial: () {},
      loading: (message) => print('⏳ $message'),
      building: () {
        print('🔨 بدء البناء...');
        buildBloc.add(const BuildEvent.started());
      },
      buildSuccess: (outputPath) {
        apkPath = outputPath;
        print('✅ تم البناء: $outputPath');
        deployBloc.reportBuildSuccess(outputPath);
      },
      checkingVersion: () {
        print('🔍 فحص الإصدار...');
        shorebirdBloc.add(const ShorebirdEvent.started());
      },
      deployingPatch: () => print('🩹 نشر الباتش...'),
      patchSuccess: () {
        print('✅ تم نشر الباتش بنجاح');
        isNewRelease = false;
        deployBloc.reportPatchSuccess();
      },
      deployingRelease: () => print('🚀 نشر النسخة الجديدة...'),
      releaseSuccess: (version, _) {
        print('✅ تم نشر النسخة ${version.cleanVersion}');
        isNewRelease = true;

        // Set GitHub Actions outputs
        setGithubOutput('is_new_release', 'true');
        setGithubOutput('version', version.cleanVersion);

        deployBloc.reportReleaseSuccess(version);
      },
      cleaningFirebase: () {
        print('🧹 تنظيف الإصدارات القديمة...');
        cleanupBloc.add(const FirebaseCleanupEvent.started());
      },
      cleanupSuccess: (deletedCount) {
        print('✅ تم حذف $deletedCount إصدار قديم');
        deployBloc.reportCleanupSuccess(deletedCount);
      },
      failure: (step, error) {
        print('❌ فشل في [$step]: $error');
        print('::error::$step: $error');
        if (!completer.isCompleted) completer.completeError(error);
      },
      completed: () {
        if (!completer.isCompleted) completer.complete();
      },
    );
  });

  // Listen to BuildBloc
  buildBloc.stream.listen((state) {
    state.when(
      initial: () {},
      building: (platform) => print('   📦 بناء $platform...'),
      success: (platform, outputPath) {
        apkPath = outputPath;
        print('   ✅ $platform تم بنجاح');
        // Notify DeployBloc that build completed
        deployBloc.reportBuildSuccess(outputPath);
      },
      failure: (platform, error) {
        print('   ❌ فشل بناء $platform: $error');
        deployBloc.reportFailure('build_$platform', error);
      },
    );
  });

  // Listen to ShorebirdBloc
  shorebirdBloc.stream.listen((state) {
    state.when(
      initial: () {},
      checkingVersion: () => print('   🔍 فحص إصدارات Shorebird...'),
      patchReady: () {
        print('   🩹 جاهز للباتش');
        shorebirdBloc.add(const ShorebirdEvent.deployPatch());
      },
      releaseReady: () {
        print('   🚀 جاهز للإصدار الجديد');
        shorebirdBloc.add(const ShorebirdEvent.deployRelease());
      },
      deployingPatch: () => print('   📤 جاري نشر الباتش...'),
      patchSuccess: () {
        print('   ✅ تم نشر الباتش');
        deployBloc.reportPatchSuccess();
      },
      deployingRelease: () => print('   📤 جاري نشر الإصدار...'),
      releaseSuccess: (version) {
        print('   ✅ تم نشر الإصدار ${version.cleanVersion}');
        deployBloc.reportReleaseSuccess(version);
      },
      failure: (error) {
        print('   ❌ فشل: $error');
        deployBloc.reportFailure('shorebird', error);
      },
    );
  });

  // Listen to CleanupBloc
  cleanupBloc.stream.listen((state) {
    state.when(
      initial: () {},
      loading: () => print('   🧹 جاري التنظيف...'),
      success: (deleted, remaining) {
        print('   ✅ تم حذف $deleted إصدار - $remaining متبقي');
        deployBloc.reportCleanupSuccess(deleted);
      },
      failure: (error) {
        print('   ❌ فشل التنظيف: $error');
        deployBloc.reportFailure('cleanup', error);
      },
    );
  });

  // Start deployment
  deployBloc.add(const DeployEvent.startDeployment());

  await completer.future;
}

Future<void> _runBuildOnly() async {
  final buildBloc = getIt<BuildBloc>();
  final completer = SafeCompleter<void>();

  buildBloc.stream.listen((state) {
    state.when(
      initial: () {},
      building: (platform) => print('📦 بناء $platform...'),
      success: (platform, outputPath) {
        print('✅ تم بناء $platform: $outputPath');
        setGithubOutput('apk_path', outputPath);
        if (!completer.isCompleted) completer.complete();
      },
      failure: (platform, error) {
        print('❌ فشل بناء $platform: $error');
        print('::error::build_$platform: $error');
        if (!completer.isCompleted) completer.completeError(error);
      },
    );
  });

  buildBloc.add(const BuildEvent.started());
  await completer.future;
}

Future<void> _runCleanupOnly() async {
  final cleanupBloc = getIt<FirebaseCleanupBloc>();
  final completer = SafeCompleter<void>();

  cleanupBloc.stream.listen((state) {
    state.when(
      initial: () {},
      loading: () => print('🧹 تنظيف Firebase...'),
      success: (deleted, remaining) {
        print('✅ تم حذف $deleted إصدار - $remaining متبقي');
        setGithubOutput('deleted_count', deleted.toString());
        setGithubOutput('remaining_count', remaining.toString());
        if (!completer.isCompleted) completer.complete();
      },
      failure: (error) {
        print('❌ فشل التنظيف: $error');
        print('::error::cleanup: $error');
        if (!completer.isCompleted) completer.completeError(error);
      },
    );
  });

  cleanupBloc.add(const FirebaseCleanupEvent.started());
  await completer.future;
}

class SafeCompleter<T> {
  final _completer = Completer<T>();

  Future<T> get future => _completer.future;
  bool get isCompleted => _completer.isCompleted;

  void complete([T? value]) {
    if (!_completer.isCompleted) {
      _completer.complete(value);
    }
  }

  void completeError(Object error, [StackTrace? stackTrace]) {
    if (!_completer.isCompleted) {
      _completer.completeError(error, stackTrace);
    }
  }
}
