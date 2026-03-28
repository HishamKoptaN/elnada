import 'dart:io';
import 'package:injectable/injectable.dart';
import '../features/shorebird/domain/entities/deployment_config.dart';
import 'config.dart';

@module
abstract class ConfigModule {
  @singleton
  DeploymentConfig get deploymentConfig {
    final config = AutomationConfig.fromEnvironment();
    return DeploymentConfig(
      flavor: config.flavor,
      shorebirdToken: config.shorebirdToken,
      firebaseToken: config.firebaseToken,
      githubRepository: config.githubRepository,
    );
  }

  @Named('projectRoot')
  @singleton
  String get projectRoot => Directory.current.path;

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
  String get flavor => Platform.environment['FLAVOR'] ?? 'production';

  @Named('githubRepository')
  @singleton
  String get githubRepository =>
      Platform.environment['GITHUB_REPOSITORY'] ?? '';

  @Named('appId')
  @singleton
  String get appId {
    final flavor = Platform.environment['FLAVOR'] ?? 'production';
    switch (flavor) {
      case 'production':
        return '1:123456789:android:production';
      case 'staging':
        return '1:123456789:android:staging';
      default:
        return '1:123456789:android:development';
    }
  }
}
