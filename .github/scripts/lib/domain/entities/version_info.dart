import 'package:freezed_annotation/freezed_annotation.dart';

part 'version_info.freezed.dart';

@freezed
class VersionInfo with _$VersionInfo {
  const factory VersionInfo({
    required String fullVersion,
    required String cleanVersion,
  }) = _VersionInfo;
}
