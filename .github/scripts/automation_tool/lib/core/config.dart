import 'dart:io';

/// Configuration for the automation tool
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
  
  /// Load configuration from environment variables
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
    // Map flavors to Firebase App IDs
    switch (flavor) {
      case 'production':
        return '1:123456789:android:production'; // Replace with actual
      case 'staging':
        return '1:123456789:android:staging'; // Replace with actual
      default:
        return '1:123456789:android:development';
    }
  }
}
