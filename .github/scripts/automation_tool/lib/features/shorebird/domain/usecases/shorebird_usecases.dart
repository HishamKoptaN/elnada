import 'package:injectable/injectable.dart';
import '../entities/deployment_config.dart';
import '../entities/deployment_result.dart';
import '../entities/version_info.dart';
import '../repos/shorebird_repo.dart';

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
    try {
      await _repo.executeRelease(config);
      return DeploymentResult.release(version: version.cleanVersion);
    } catch (e) {
      final error = e.toString();
      // If release exists, create a patch instead
      if (error.contains('existing') ||
          error.contains('bump your version') ||
          error.contains('already exists')) {
        print('   Release exists, creating patch instead...');
        try {
          await _repo.executePatch(config);
          return const DeploymentResult.patch();
        } catch (patchError) {
          return DeploymentResult.failure(
            reason: 'Patch failed after release existed: $patchError',
          );
        }
      }
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
    print(
      '   Checking if ${version.cleanVersion} exists in ${releases.map((r) => r.cleanVersion).toList()}',
    );
    final exists = releases.any((r) => r.cleanVersion == version.cleanVersion);
    print('   Version exists: $exists');
    return exists;
  }
}
