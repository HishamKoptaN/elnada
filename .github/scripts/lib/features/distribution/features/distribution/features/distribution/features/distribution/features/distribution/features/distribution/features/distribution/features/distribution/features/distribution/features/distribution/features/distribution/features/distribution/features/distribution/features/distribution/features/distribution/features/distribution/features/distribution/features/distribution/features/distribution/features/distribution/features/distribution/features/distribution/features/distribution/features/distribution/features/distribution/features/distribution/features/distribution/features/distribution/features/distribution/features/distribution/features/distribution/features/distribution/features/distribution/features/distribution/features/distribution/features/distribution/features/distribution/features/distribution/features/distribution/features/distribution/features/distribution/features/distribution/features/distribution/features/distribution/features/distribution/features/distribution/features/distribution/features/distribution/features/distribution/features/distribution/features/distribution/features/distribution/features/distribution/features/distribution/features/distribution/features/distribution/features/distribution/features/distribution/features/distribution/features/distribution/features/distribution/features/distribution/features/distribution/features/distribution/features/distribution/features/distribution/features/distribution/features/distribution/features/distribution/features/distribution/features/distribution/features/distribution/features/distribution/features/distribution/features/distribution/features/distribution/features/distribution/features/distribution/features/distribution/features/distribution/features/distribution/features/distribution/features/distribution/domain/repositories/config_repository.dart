import '../entities/deployment_config.dart';
import '../entities/version_info.dart';

abstract class ConfigRepository {
  DeploymentConfig loadConfiguration();
  VersionInfo extractVersionFromPubspec();
}
