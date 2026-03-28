import 'package:freezed_annotation/freezed_annotation.dart';

part 'deployment_config.freezed.dart';
part 'deployment_config.g.dart';

/// Deployment configuration entity
@freezed
class DeploymentConfig with _$DeploymentConfig {
  const factory DeploymentConfig({
    required String flavor,
    required String shorebirdToken,
    String? firebaseToken,
    String? githubRepository,
    @Default(false) bool skipFirebase,
    @Default(false) bool skipGithub,
  }) = _DeploymentConfig;

  factory DeploymentConfig.fromJson(Map<String, dynamic> json) =>
      _$DeploymentConfigFromJson(json);
}
