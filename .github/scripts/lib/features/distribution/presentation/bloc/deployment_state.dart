import 'package:freezed_annotation/freezed_annotation.dart';

part 'deployment_state.freezed.dart';

@freezed
class DeploymentState with _$DeploymentState {
  const factory DeploymentState.initial() = DeploymentStateInitial;
  const factory DeploymentState.loading() = DeploymentStateLoading;
  const factory DeploymentState.patchSuccess() = DeploymentStatePatchSuccess;
  const factory DeploymentState.releaseSuccess(String version) =
      DeploymentStateReleaseSuccess;
  const factory DeploymentState.failure(String error) = DeploymentStateFailure;
}
