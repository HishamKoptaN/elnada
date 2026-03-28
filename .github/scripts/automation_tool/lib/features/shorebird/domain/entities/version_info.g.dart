// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VersionInfoImpl _$$VersionInfoImplFromJson(Map<String, dynamic> json) =>
    _$VersionInfoImpl(
      fullVersion: json['fullVersion'] as String,
      cleanVersion: json['cleanVersion'] as String,
      major: (json['major'] as num?)?.toInt() ?? 0,
      minor: (json['minor'] as num?)?.toInt() ?? 0,
      patch: (json['patch'] as num?)?.toInt() ?? 0,
      buildNumber: (json['buildNumber'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$VersionInfoImplToJson(_$VersionInfoImpl instance) =>
    <String, dynamic>{
      'fullVersion': instance.fullVersion,
      'cleanVersion': instance.cleanVersion,
      'major': instance.major,
      'minor': instance.minor,
      'patch': instance.patch,
      'buildNumber': instance.buildNumber,
    };
