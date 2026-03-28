import '../entities/deployment_config.dart';
import '../entities/deployment_result.dart';

abstract class DeploymentRepository {
  Future<bool> isPatchPossible(DeploymentConfig config);
  Future<void> executePatch(DeploymentConfig config);
  Future<bool> isReleasePossible(DeploymentConfig config);
  Future<void> executeRelease(DeploymentConfig config);
}
