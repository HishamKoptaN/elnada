import 'package:abujena_automation/injection.dart';
import 'package:abujena_automation/features/build_engine/build_bloc.dart';
import 'package:abujena_automation/features/deploy/deploy_bloc.dart';
import 'package:abujena_automation/features/shorebird/present/bloc/shorebird_bloc.dart';
import 'package:abujena_automation/features/firebase/present/bloc/firebase_cleanup_bloc.dart';

/// Single deployment command that handles full flow:
/// 1. Build → 2. Check version → 3. Release or Patch → 4. Distribute → 5. Cleanup
class DeploymentRunner {
  final DeployBloc _deployBloc = getIt<DeployBloc>();
  final BuildBloc _buildBloc = getIt<BuildBloc>();
  final ShorebirdBloc _shorebirdBloc = getIt<ShorebirdBloc>();
  final CleanupBloc _cleanupBloc = getIt<FirebaseCleanupBloc>();

  Future<void> run() async {
    _setupLogging();

    try {
      await for (final state in _deployBloc.stream) {
        final shouldContinue = await _handleState(state);
        if (!shouldContinue) break;
      }
    } finally {
      _closeBlocs();
    }
  }

  Future<bool> _handleState(DeployState state) async {
    return state.map(
      initial: (_) => true,
      loading: (s) {
        print('⏳ ${s.message}');
        return true;
      },
      building: (_) {
        print('🔨 Building...');
        _buildBloc.add(const BuildEvent.started());
        return true;
      },
      buildSuccess: (s) {
        print('✅ Build complete: ${s.outputPath}');
        return true;
      },
      checkingVersion: (_) {
        print('🔍 Checking version on Shorebird...');
        _shorebirdBloc.add(const ShorebirdEvent.started());
        return true;
      },
      deployingPatch: (_) {
        print('🩹 Deploying patch...');
        return true;
      },
      patchSuccess: (_) {
        print('✅ Patch deployed successfully');
        return true;
      },
      deployingRelease: (_) {
        print('🚀 Deploying new release...');
        return true;
      },
      releaseSuccess: (s) {
        print('✅ Release ${s.version.cleanVersion} deployed');
        return true;
      },
      cleaningFirebase: (_) {
        print('🧹 Cleaning old releases...');
        _cleanupBloc.add(const FirebaseCleanupEvent.started());
        return true;
      },
      cleanupSuccess: (s) {
        print('✅ Cleaned ${s.deletedCount} old releases');
        return true;
      },
      completed: (_) {
        print('🎉 All done!');
        return false;
      },
      failure: (s) {
        print('❌ Failed at [${s.step}]: ${s.error}');
        throw Exception('Deployment failed: ${s.error}');
      },
    );
  }

  void _setupLogging() {
    // Build logging
    _buildBloc.stream.listen((state) {
      state.whenOrNull(
        building: (p) => print('   📦 Building $p...'),
        success: (p, path) => print('   ✅ Built: $path'),
        failure: (p, e) => print('   ❌ Build failed: $e'),
      );
    });

    // Shorebird logging
    _shorebirdBloc.stream.listen((state) {
      state.whenOrNull(
        checkingVersion: () => print('   🔍 Checking Shorebird...'),
        patchReady: () => print('   🩹 Will create patch'),
        releaseReady: () => print('   🚀 Will create release'),
        deployingPatch: () => print('   📤 Patching...'),
        patchSuccess: () => print('   ✅ Patched'),
        deployingRelease: () => print('   📤 Releasing...'),
        releaseSuccess: (v) => print('   ✅ Released ${v.cleanVersion}'),
        failure: (e) => print('   ❌ Shorebird error: $e'),
      );
    });

    // Cleanup logging
    _cleanupBloc.stream.listen((state) {
      state.whenOrNull(
        loading: () => print('   🧹 Cleaning...'),
        success: (d, r) => print('   ✅ Cleaned: $d deleted, $r kept'),
        failure: (e) => print('   ❌ Cleanup error: $e'),
      );
    });

    _deployBloc.add(const DeployEvent.started());
  }

  void _closeBlocs() {
    _deployBloc.close();
    _buildBloc.close();
    _shorebirdBloc.close();
    _cleanupBloc.close();
  }
}

typedef CleanupBloc = FirebaseCleanupBloc;
