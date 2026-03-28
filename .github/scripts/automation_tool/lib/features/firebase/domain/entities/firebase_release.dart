import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_release.freezed.dart';
part 'firebase_release.g.dart';

/// Firebase release entity
@freezed
class FirebaseRelease with _$FirebaseRelease {
  const factory FirebaseRelease({
    required String id,
    required String version,
    required String buildVersion,
    required DateTime createTime,
    String? displayVersion,
    String? releaseNotes,
  }) = _FirebaseRelease;

  factory FirebaseRelease.fromJson(Map<String, dynamic> json) =>
      _$FirebaseReleaseFromJson(json);
}
