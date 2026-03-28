import 'package:freezed_annotation/freezed_annotation.dart';

part 'deployment_result.freezed.dart';
part 'deployment_result.g.dart';

/// Deployment result entity representing success or failure
@freezed
class DeploymentResult with _$DeploymentResult {
  const factory DeploymentResult.patch() = DeploymentResultPatch;
  
  const factory DeploymentResult.release({
    required String version,
  }) = DeploymentResultRelease;
  
  const factory DeploymentResult.failure({
    required String reason,
  }) = DeploymentResultFailure;

  factory DeploymentResult.fromJson(Map<String, dynamic> json) =>
      _$DeploymentResultFromJson(json);
}
