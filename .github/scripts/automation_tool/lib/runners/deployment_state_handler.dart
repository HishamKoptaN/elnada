import 'package:abujena_automation/core/utils/github_outputs.dart';
import 'package:abujena_automation/features/build_engine/build_bloc.dart';
import 'package:abujena_automation/features/deploy/deploy_bloc.dart';
import 'package:abujena_automation/features/shorebird/present/bloc/shorebird_bloc.dart';
import 'package:abujena_automation/features/firebase/present/bloc/firebase_cleanup_bloc.dart';
import 'telegram_notifier.dart';

/// Handles deployment state transitions
class DeploymentStateHandler {
  final BuildBloc _buildBloc;
  final ShorebirdBloc _shorebirdBloc;
  final CleanupBloc _cleanupBloc;
  final TelegramNotifier _notifier;

  DeploymentStateHandler({
    required BuildBloc buildBloc,
    required ShorebirdBloc shorebirdBloc,
    required CleanupBloc cleanupBloc,
    required TelegramNotifier notifier,
  })  : _buildBloc = buildBloc,
        _shorebirdBloc = shorebirdBloc,
        _cleanupBloc = cleanupBloc,
        _notifier = notifier;

  Future<bool> handle(DeployState state) async {
    return state.map(
      initial: (_) => true,
      loading: _handleLoading,
      building: _handleBuilding,
      buildSuccess: _handleBuildSuccess,
      checkingVersion: _handleCheckingVersion,
      deployingPatch: _handleDeployingPatch,
      patchSuccess: _handlePatchSuccess,
      deployingRelease: _handleDeployingRelease,
      releaseSuccess: _handleReleaseSuccess,
      cleaningFirebase: _handleCleaningFirebase,
      cleanupSuccess: _handleCleanupSuccess,
      completed: _handleCompleted,
      failure: _handleFailure,
    );
  }

  bool _handleLoading(Loading state) {
    print('⏳ ${state.message}');
    return true;
  }

  bool _handleBuilding(_) {
    print('🔨 بدء البناء...');
    _buildBloc.add(const BuildEvent.started());
    return true;
  }

  bool _handleBuildSuccess(BuildSuccess state) {
    print('✅ تم البناء: ${state.outputPath}');
    return true;
  }

  bool _handleCheckingVersion(_) {
    print('🔍 فحص الإصدار...');
    _shorebirdBloc.add(const ShorebirdEvent.started());
    return true;
  }

  bool _handleDeployingPatch(_) {
    print('🩹 نشر الباتش...');
    return true;
  }

  bool _handlePatchSuccess(_) {
    print('✅ تم نشر الباتش بنجاح');
    _notifier.notifySuccess(isPatch: true);
    return true;
  }

  bool _handleDeployingRelease(_) {
    print('🚀 نشر النسخة الجديدة...');
    return true;
  }

  bool _handleReleaseSuccess(ReleaseSuccess state) {
    final version = state.version.cleanVersion;
    print('✅ تم نشر النسخة $version');
    GithubOutputs.setMultiple({
      'is_new_release': 'true',
      'version': version,
    });
    _notifier.notifySuccess(isPatch: false, version: version);
    return true;
  }

  bool _handleCleaningFirebase(_) {
    print('🧹 تنظيف الإصدارات القديمة...');
    _cleanupBloc.add(const FirebaseCleanupEvent.started());
    return true;
  }

  bool _handleCleanupSuccess(CleanupSuccess state) {
    print('✅ تم حذف ${state.deletedCount} إصدار قديم');
    return true;
  }

  bool _handleCompleted(_) {
    print('🎉 Deployment completed!');
    return false;
  }

  Future<bool> _handleFailure(Failure state) async {
    print('❌ فشل في [${state.step}]: ${state.error}');
    print('::error::${state.step}: ${state.error}');
    _notifier.notifyFailure(step: state.step, error: state.error);
    throw Exception('Deployment failed: ${state.error}');
  }
}

typedef CleanupBloc = FirebaseCleanupBloc;
