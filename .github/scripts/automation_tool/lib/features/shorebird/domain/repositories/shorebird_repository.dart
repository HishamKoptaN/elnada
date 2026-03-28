import 'package:injectable/injectable.dart';
import '../entities/deployment_config.dart';
import '../entities/deployment_result.dart';
import '../entities/version_info.dart';

/// Repository interface for Shorebird operations
@singleton
abstract class ShorebirdRepository {
  /// Check if a patch is possible for the given config
  Future<bool> isPatchPossible(DeploymentConfig config);

  /// Execute a patch deployment
  Future<void> executePatch(DeploymentConfig config);

  /// Check if a release is possible for the given config
  Future<bool> isReleasePossible(DeploymentConfig config);

  /// Execute a release deployment
  Future<void> executeRelease(DeploymentConfig config);

  /// Get existing releases
  Future<List<VersionInfo>> getExistingReleases(DeploymentConfig config);
}
