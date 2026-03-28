import 'package:injectable/injectable.dart';
import '../entities/deployment_config.dart';
import '../entities/deployment_result.dart';
import '../entities/version_info.dart';
import '../repositories/shorebird_repository.dart';

/// Use cases for Shorebird deployment operations
@singleton
class ShorebirdUseCases {
  final ShorebirdRepository _repository;

  ShorebirdUseCases(this._repository);

  /// Deploy a patch if possible
  Future<DeploymentResult> deployPatch(DeploymentConfig config) async {
    final isPossible = await _repository.isPatchPossible(config);

    if (!isPossible) {
      return const DeploymentResult.failure(
        reason: 'Patch not possible - no existing release found',
      );
    }

    try {
      await _repository.executePatch(config);
      return const DeploymentResult.patch();
    } catch (e) {
      return DeploymentResult.failure(reason: 'Patch failed: $e');
    }
  }

  /// Deploy a release if possible
  Future<DeploymentResult> deployRelease(
    DeploymentConfig config,
    VersionInfo version,
  ) async {
    final isPossible = await _repository.isReleasePossible(config);

    if (!isPossible) {
      return DeploymentResult.failure(
        reason:
            'Release not possible - version ${version.cleanVersion} may already exist',
      );
    }

    try {
      await _repository.executeRelease(config);
      return DeploymentResult.release(version: version.cleanVersion);
    } catch (e) {
      return DeploymentResult.failure(reason: 'Release failed: $e');
    }
  }

  /// Get existing releases
  Future<List<VersionInfo>> getExistingReleases(DeploymentConfig config) async {
    return await _repository.getExistingReleases(config);
  }

  /// Check if version exists
  Future<bool> versionExists(
    DeploymentConfig config,
    VersionInfo version,
  ) async {
    final releases = await getExistingReleases(config);
    return releases.any((r) => r.cleanVersion == version.cleanVersion);
  }
}
