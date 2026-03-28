import '../../domain/entities/deployment_config.dart';
import '../../domain/entities/deployment_result.dart';
import '../../domain/entities/version_info.dart';
import '../../domain/repositories/shorebird_repository.dart';
import '../datasources/shorebird_local_datasource.dart';
import '../datasources/shorebird_api_service.dart';

/// Repository implementation for Shorebird
class ShorebirdRepositoryImpl implements ShorebirdRepository {
  final ShorebirdLocalDataSource _localDataSource;
  final ShorebirdApiService? _apiService;

  ShorebirdRepositoryImpl({
    required ShorebirdLocalDataSource localDataSource,
    ShorebirdApiService? apiService,
  })  : _localDataSource = localDataSource,
        _apiService = apiService;

  @override
  Future<bool> isPatchPossible(DeploymentConfig config) async {
    return await _localDataSource.isPatchPossible(config);
  }

  @override
  Future<void> executePatch(DeploymentConfig config) async {
    return await _localDataSource.executePatch(config);
  }

  @override
  Future<bool> isReleasePossible(DeploymentConfig config) async {
    return await _localDataSource.isReleasePossible(config);
  }

  @override
  Future<void> executeRelease(DeploymentConfig config) async {
    return await _localDataSource.executeRelease(config);
  }

  @override
  Future<List<VersionInfo>> getExistingReleases(DeploymentConfig config) async {
    return await _localDataSource.getExistingReleases(config);
  }
}
