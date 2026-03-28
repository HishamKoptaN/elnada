import '../entities/deployment_config.dart';
import '../entities/deployment_result.dart';
import '../entities/version_info.dart';
import '../repositories/config_repository.dart';
import '../repositories/deployment_repository.dart';
import '../repositories/appcast_repository.dart';

class DeploymentUseCases {
  final ConfigRepository _configRepository;
  final DeploymentRepository _deploymentRepository;
  final AppcastRepository _appcastRepository;

  DeploymentUseCases(
    this._configRepository,
    this._deploymentRepository,
    this._appcastRepository,
  );

  Future<DeploymentResult> deployPatch(DeploymentConfig config) async {
    final isPossible = await _deploymentRepository.isPatchPossible(config);
    
    if (!isPossible) {
      return DeploymentResult.failure('Patch not possible');
    }
    
    await _deploymentRepository.executePatch(config);
    return const DeploymentResult.patch();
  }

  Future<DeploymentResult> deployRelease(DeploymentConfig config, String version) async {
    final isPossible = await _deploymentRepository.isReleasePossible(config);
    
    if (!isPossible) {
      return DeploymentResult.failure('Release not possible - version may already exist');
    }
    
    await _deploymentRepository.executeRelease(config);
    await _appcastRepository.updateAppcast(version, config.repo!);
    return DeploymentResult.release(version);
  }

  Future<DeploymentResult> deploy() async {
    final config = _configRepository.loadConfiguration();
    final version = _configRepository.extractVersionFromPubspec();

    final patchResult = await deployPatch(config);
    
    if (patchResult is! DeploymentResultFailure) {
      return patchResult;
    }

    final releaseResult = await deployRelease(config, version.cleanVersion);
    return releaseResult;
  }
}
