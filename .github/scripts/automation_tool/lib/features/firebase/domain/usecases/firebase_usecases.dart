import '../data/repositories/firebase_repository.dart';

/// Use cases for Firebase operations
class FirebaseUseCases {
  final FirebaseRepository _repository;

  FirebaseUseCases(this._repository);

  /// Clean old releases keeping only latest N
  Future<void> cleanOldReleases(
    String appId,
    String token, {
    int keepLatest = 3,
  }) async {
    await _repository.deleteOldReleases(
      appId,
      token,
      keepLatest: keepLatest,
    );
  }

  /// Get release count
  Future<int> getReleaseCount(String appId, String token) async {
    final releases = await _repository.getReleases(appId, token);
    return releases.length;
  }

  /// Distribute APK to Firebase
  Future<void> distributeApk(
    String apkPath,
    String appId,
    String token, {
    String? releaseNotes,
  }) async {
    await _repository.distributeApk(
      apkPath,
      appId,
      token,
      releaseNotes: releaseNotes,
    );
  }
}
