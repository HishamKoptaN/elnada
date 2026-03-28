import '../domain/entities/firebase_release.dart';
import '../data/datasources/firebase_api_service.dart';
import '../data/datasources/firebase_local_datasource.dart';

/// Repository for Firebase operations
class FirebaseRepository {
  final FirebaseApiService? _apiService;
  final FirebaseLocalDataSource _localDataSource;

  FirebaseRepository({
    FirebaseApiService? apiService,
    required FirebaseLocalDataSource localDataSource,
  })  : _apiService = apiService,
        _localDataSource = localDataSource;

  /// Get all releases
  Future<List<FirebaseRelease>> getReleases(String appId, String token) async {
    // Use local CLI by default
    final rawReleases = await _localDataSource.getReleases(appId, token);
    return rawReleases.map((r) => FirebaseRelease.fromJson(r)).toList();
  }

  /// Delete old releases keeping only the latest N
  Future<void> deleteOldReleases(
    String appId,
    String token, {
    int keepLatest = 3,
  }) async {
    final releases = await getReleases(appId, token);

    // Sort by create time descending
    releases.sort((a, b) => b.createTime.compareTo(a.createTime));

    // Keep only latest N
    final toDelete = releases.skip(keepLatest).toList();

    for (final release in toDelete) {
      await _localDataSource.deleteRelease(release.id, token);
    }
  }

  /// Distribute APK
  Future<void> distributeApk(
    String apkPath,
    String appId,
    String token, {
    String? releaseNotes,
    List<String>? testers,
    List<String>? groups,
  }) async {
    await _localDataSource.distributeApk(
      apkPath,
      appId,
      token,
      releaseNotes: releaseNotes,
      testers: testers,
      groups: groups,
    );
  }
}
