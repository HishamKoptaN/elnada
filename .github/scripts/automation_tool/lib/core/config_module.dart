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
}
