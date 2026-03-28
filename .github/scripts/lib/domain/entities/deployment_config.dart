import 'package:freezed_annotation/freezed_annotation.dart';

part 'deployment_config.freezed.dart';

@freezed
class DeploymentConfig with _$DeploymentConfig {
  const factory DeploymentConfig({
    required String flavor,
    required String token,
    String? repo,
  }) = _DeploymentConfig;
}
