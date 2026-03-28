// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deployment_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeploymentResultPatchImpl _$$DeploymentResultPatchImplFromJson(
        Map<String, dynamic> json) =>
    _$DeploymentResultPatchImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DeploymentResultPatchImplToJson(
        _$DeploymentResultPatchImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$DeploymentResultReleaseImpl _$$DeploymentResultReleaseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeploymentResultReleaseImpl(
      version: json['version'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DeploymentResultReleaseImplToJson(
        _$DeploymentResultReleaseImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'runtimeType': instance.$type,
    };

_$DeploymentResultFailureImpl _$$DeploymentResultFailureImplFromJson(
        Map<String, dynamic> json) =>
    _$DeploymentResultFailureImpl(
      reason: json['reason'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DeploymentResultFailureImplToJson(
        _$DeploymentResultFailureImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'runtimeType': instance.$type,
    };
