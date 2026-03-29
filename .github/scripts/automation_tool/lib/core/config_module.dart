import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:yaml/yaml.dart';
import '../features/shorebird/domain/entities/deployment_config.dart';
import 'config.dart';

@module
abstract class ConfigModule {
  @singleton
  DeploymentConfig getDeploymentConfig(
    @Named('flavor') String flavor,
    @Named('shorebirdToken') String shorebirdToken,
    @Named('firebaseToken') String firebaseToken,
    @Named('githubRepository') String githubRepository,
    @Named('appId') String shorebirdAppId,
  ) {
    return DeploymentConfig(
      flavor: flavor,
      shorebirdToken: shorebirdToken,
      shorebirdAppId: shorebirdAppId,
      firebaseToken: firebaseToken.isEmpty ? null : firebaseToken,
      githubRepository: githubRepository,
    );
  }

  @Named('projectRoot')
  @singleton
  String get projectRoot {
    final envRoot = Platform.environment['PROJECT_ROOT'];
    return envRoot ?? Directory.current.path;
  }

  @Named('shorebirdToken')
  @singleton
  String get shorebirdToken {
    final token = Platform.environment['SHOREBIRD_TOKEN'];
    if (token == null || token.isEmpty) {
      throw Exception('SHOREBIRD_TOKEN environment variable is required');
    }
    return token;
  }

  @Named('firebaseToken')
  @singleton
  String get firebaseToken => Platform.environment['FIREBASE_TOKEN'] ?? '';

  @Named('flavor')
  @singleton
  String get flavor => Platform.environment['FLAVOR'] ?? 'prod';

  @Named('githubRepository')
  @singleton
  String get githubRepository =>
      Platform.environment['GITHUB_REPOSITORY'] ?? '';

  @Named('appId')
  @singleton
  String get appId {
    final flavor = Platform.environment['FLAVOR'] ?? 'prod';
    final shorebirdYaml = File('shorebird.yaml');
    if (shorebirdYaml.existsSync()) {
      try {
        final content = shorebirdYaml.readAsStringSync();
        final yaml = loadYaml(content);
        final flavors = yaml['flavors'] as YamlMap?;
        if (flavors != null && flavors.containsKey(flavor)) {
          return flavors[flavor] as String;
        }
        // fallback to default app_id if no flavor match
        final appId = yaml['app_id'] as String?;
        if (appId != null) return appId;
      } catch (e) {
        // ignore and fallback to hardcoded
      }
    }
    // fallback hardcoded values
    switch (flavor) {
      case 'prod':
        return 'ed427ccb-5edb-4594-a376-2ee9636bef4e';
      case 'dev':
        return 'e962126d-ee7a-48f2-b89d-fb0349f4a05f';
      default:
        return 'ed427ccb-5edb-4594-a376-2ee9636bef4e';
    }
  }
}
