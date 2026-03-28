import 'package:freezed_annotation/freezed_annotation.dart';
import '../../shorebird/domain/entities/version_info.dart';

part 'deploy_state.freezed.dart';

/// States for Deployment orchestrator BLoC
@freezed
class DeployState with _$DeployState {
  const factory DeployState.initial() = DeployStateInitial;
  const factory DeployState.loading({required String message}) = DeployStateLoading;
  const factory DeployState.building() = DeployStateBuilding;
  const factory DeployState.buildSuccess({required String outputPath}) = DeployStateBuildSuccess;
  const factory DeployState.checkingVersion() = DeployStateCheckingVersion;
  const factory DeployState.deployingPatch() = DeployStateDeployingPatch;
  const factory DeployState.patchSuccess() = DeployStatePatchSuccess;
  const factory DeployState.deployingRelease() = DeployStateDeployingRelease;
  const factory DeployState.releaseSuccess({
    required VersionInfo version,
    required bool isNewRelease,
  }) = DeployStateReleaseSuccess;
  const factory DeployState.cleaningFirebase() = DeployStateCleaningFirebase;
  const factory DeployState.cleanupSuccess({required int deletedCount}) = DeployStateCleanupSuccess;
  const factory DeployState.failure({
    required String step,
    required String error,
  }) = DeployStateFailure;
  const factory DeployState.completed() = DeployStateCompleted;
}
