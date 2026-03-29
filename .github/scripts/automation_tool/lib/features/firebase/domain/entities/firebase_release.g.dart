// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_release.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FirebaseRelease _$FirebaseReleaseFromJson(Map<String, dynamic> json) =>
    _FirebaseRelease(
      id: json['id'] as String,
      version: json['version'] as String,
      buildVersion: json['buildVersion'] as String,
      createTime: DateTime.parse(json['createTime'] as String),
      displayVersion: json['displayVersion'] as String?,
      releaseNotes: json['releaseNotes'] as String?,
    );

Map<String, dynamic> _$FirebaseReleaseToJson(_FirebaseRelease instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'buildVersion': instance.buildVersion,
      'createTime': instance.createTime.toIso8601String(),
      'displayVersion': instance.displayVersion,
      'releaseNotes': instance.releaseNotes,
    };
