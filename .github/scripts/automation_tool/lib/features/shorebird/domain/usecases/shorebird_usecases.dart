import 'package:injectable/injectable.dart';
import '../entities/deployment_config.dart';
import '../entities/deployment_result.dart';
import '../entities/version_info.dart';
import '../../repos/shorebird_repo.dart';

@singleton
class ShorebirdUseCases {
  final ShorebirdRepo _repo;
  ShorebirdUseCases(this._repo);
  Future<DeploymentResult> deployPatch(DeploymentConfig config) async {
    final isPossible = await _repo.isPatchPossible(config);
    if (!isPossible) {
      return const DeploymentResult.failure(
        reason: 'Patch not possible - no existing release found',
      );
    }
    try {
      await _repo.executePatch(config);
      return const DeploymentResult.patch();
    } catch (e) {
      return DeploymentResult.failure(reason: 'Patch failed: $e');
    }
  }

  Future<DeploymentResult> deployRelease(
    DeploymentConfig config,
    VersionInfo version,
  ) async {
    final isPossible = await _repo.isReleasePossible(config);
    if (!isPossible) {
      return DeploymentResult.failure(
        reason:
            'Release not possible - version ${version.cleanVersion} may already exist',
      );
    }
    try {
      await _repo.executeRelease(config);
      return DeploymentResult.release(version: version.cleanVersion);
    } catch (e) {
      return DeploymentResult.failure(reason: 'Release failed: $e');
    }
  }

  Future<List<VersionInfo>> getExistingReleases(DeploymentConfig config) async {
    return await _repo.getExistingReleases(config);
  }

  Future<bool> versionExists(
    DeploymentConfig config,
    VersionInfo version,
  ) async {
    final releases = await getExistingReleases(config);
    return releases.any((r) => r.cleanVersion == version.cleanVersion);
  }
}
