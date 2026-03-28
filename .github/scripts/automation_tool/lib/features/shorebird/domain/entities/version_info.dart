import 'package:freezed_annotation/freezed_annotation.dart';

part 'version_info.freezed.dart';
part 'version_info.g.dart';

/// Version information entity
@freezed
class VersionInfo with _$VersionInfo {
  const factory VersionInfo({
    required String fullVersion,
    required String cleanVersion,
    @Default(0) int major,
    @Default(0) int minor,
    @Default(0) int patch,
    @Default(0) int buildNumber,
  }) = _VersionInfo;

  factory VersionInfo.fromJson(Map<String, dynamic> json) =>
      _$VersionInfoFromJson(json);
  
  factory VersionInfo.fromPubspecVersion(String version) {
    // Parse version like "1.0.0+2" or "1.0.0"
    final parts = version.split('+');
    final versionParts = parts[0].split('.');
    
    return VersionInfo(
      fullVersion: version,
      cleanVersion: parts[0],
      major: int.tryParse(versionParts[0]) ?? 0,
      minor: int.tryParse(versionParts[1]) ?? 0,
      patch: int.tryParse(versionParts[2]) ?? 0,
      buildNumber: parts.length > 1 ? int.tryParse(parts[1]) ?? 0 : 0,
    );
  }
}
