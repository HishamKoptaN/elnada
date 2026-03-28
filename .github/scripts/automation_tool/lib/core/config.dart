import 'dart:io';
import 'package:injectable/injectable.dart';

@singleton
class AutomationConfig {
  final String projectRoot;
  final String shorebirdToken;
  final String? firebaseToken;
  final String flavor;
  final String githubRepository;

  AutomationConfig({
    required this.projectRoot,
    required this.shorebirdToken,
    this.firebaseToken,
    required this.flavor,
    required this.githubRepository,
  });
  factory AutomationConfig.fromEnvironment() {
    final projectRoot = Directory.current.path;
    final shorebirdToken = Platform.environment['SHOREBIRD_TOKEN'];
    final firebaseToken = Platform.environment['FIREBASE_TOKEN'];
    final flavor = Platform.environment['FLAVOR'] ?? 'production';
    final githubRepository = Platform.environment['GITHUB_REPOSITORY'] ?? '';

    if (shorebirdToken == null || shorebirdToken.isEmpty) {
      throw Exception('SHOREBIRD_TOKEN environment variable is required');
    }

    return AutomationConfig(
      projectRoot: projectRoot,
      shorebirdToken: shorebirdToken,
      firebaseToken: firebaseToken,
      flavor: flavor,
      githubRepository: githubRepository,
    );
  }

  String get appId {
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
