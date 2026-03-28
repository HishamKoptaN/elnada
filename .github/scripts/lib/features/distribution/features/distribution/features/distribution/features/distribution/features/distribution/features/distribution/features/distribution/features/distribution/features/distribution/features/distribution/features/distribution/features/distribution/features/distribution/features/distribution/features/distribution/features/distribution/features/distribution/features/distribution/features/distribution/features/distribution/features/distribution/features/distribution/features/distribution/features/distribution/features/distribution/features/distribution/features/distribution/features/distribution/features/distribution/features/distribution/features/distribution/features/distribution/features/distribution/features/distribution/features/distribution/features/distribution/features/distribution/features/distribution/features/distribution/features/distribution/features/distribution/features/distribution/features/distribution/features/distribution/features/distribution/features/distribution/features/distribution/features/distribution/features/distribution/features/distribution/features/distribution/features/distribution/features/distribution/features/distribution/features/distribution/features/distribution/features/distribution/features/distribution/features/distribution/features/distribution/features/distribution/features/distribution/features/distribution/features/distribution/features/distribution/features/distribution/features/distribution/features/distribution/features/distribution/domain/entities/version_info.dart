import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'version_info.freezed.dart';
part 'version_info.g.dart';

@freezed
@JsonSerializable()
class VersionInfo with _$VersionInfo {
  const factory VersionInfo({
    required String fullVersion,
    required String cleanVersion,
  }) = _VersionInfo;

  factory VersionInfo.fromJson(Map<String, dynamic> json) =>
      _$VersionInfoFromJson(json);
}
