import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deployment_result.freezed.dart';
part 'deployment_result.g.dart';

@Freezed(unionKey: 'type')
@JsonSerializable()
class DeploymentResult with _$DeploymentResult {
  const factory DeploymentResult.patch() = DeploymentResultPatch;

  const factory DeploymentResult.release({required String version}) =
      DeploymentResultRelease;

  const factory DeploymentResult.failure({required String reason}) =
      DeploymentResultFailure;

  factory DeploymentResult.fromJson(Map<String, dynamic> json) =>
      _$DeploymentResultFromJson(json);
}
