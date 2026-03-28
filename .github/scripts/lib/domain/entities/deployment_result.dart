import 'package:freezed_annotation/freezed_annotation.dart';

part 'deployment_result.freezed.dart';

@freezed
class DeploymentResult with _$DeploymentResult {
  const factory DeploymentResult.patch() = DeploymentResultPatch;
  const factory DeploymentResult.release(String version) = DeploymentResultRelease;
  const factory DeploymentResult.failure(String reason) = DeploymentResultFailure;
}
