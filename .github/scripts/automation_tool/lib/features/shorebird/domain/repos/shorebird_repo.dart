import 'package:injectable/injectable.dart';
import '../entities/deployment_config.dart';
import '../entities/deployment_result.dart';
import '../entities/version_info.dart';

abstract class ShorebirdRepo {
  Future<bool> isPatchPossible(DeploymentConfig config);
  Future<void> executePatch(DeploymentConfig config);
  Future<bool> isReleasePossible(DeploymentConfig config, VersionInfo version);
  Future<void> executeRelease(DeploymentConfig config);
  Future<List<VersionInfo>> getExistingReleases(DeploymentConfig config);
}
