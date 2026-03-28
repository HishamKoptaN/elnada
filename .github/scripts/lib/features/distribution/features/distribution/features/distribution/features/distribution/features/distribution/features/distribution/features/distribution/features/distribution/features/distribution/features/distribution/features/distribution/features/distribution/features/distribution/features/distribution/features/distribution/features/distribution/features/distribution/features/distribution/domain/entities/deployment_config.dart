import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deployment_config.freezed.dart';
part 'deployment_config.g.dart';

@freezed
@JsonSerializable()
class DeploymentConfig with _$DeploymentConfig {
  const factory DeploymentConfig({
    required String flavor,
    required String token,
    String? repo,
  }) = _DeploymentConfig;

  factory DeploymentConfig.fromJson(Map<String, dynamic> json) =>
      _$DeploymentConfigFromJson(json);
}
