import 'package:injectable/injectable.dart';
import '../../data/repos/firebase_repo.dart';

/// Use cases for Firebase operations
@singleton
class FirebaseUseCases {
  final FirebaseRepo _repo;

  FirebaseUseCases(this._repo);

  /// Clean old releases keeping only latest N
  Future<void> cleanOldReleases(
    String appId,
    String token, {
    int keepLatest = 3,
  }) async {
    await _repo.deleteOldReleases(appId, token, keepLatest: keepLatest);
  }

  /// Get release count
  Future<int> getReleaseCount(String appId, String token) async {
    final releases = await _repo.getReleases(appId, token);
    return releases.length;
  }

  /// Distribute APK to Firebase
  Future<void> distributeApk(
    String apkPath,
    String appId,
    String token, {
    String? releaseNotes,
  }) async {
    await _repo.distributeApk(
      apkPath,
      appId,
      token,
      releaseNotes: releaseNotes,
    );
  }
}
