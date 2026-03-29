// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deployment_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeploymentResultPatch _$DeploymentResultPatchFromJson(
        Map<String, dynamic> json) =>
    DeploymentResultPatch(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$DeploymentResultPatchToJson(
        DeploymentResultPatch instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

DeploymentResultRelease _$DeploymentResultReleaseFromJson(
        Map<String, dynamic> json) =>
    DeploymentResultRelease(
      version: json['version'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$DeploymentResultReleaseToJson(
        DeploymentResultRelease instance) =>
    <String, dynamic>{
      'version': instance.version,
      'runtimeType': instance.$type,
    };

DeploymentResultFailure _$DeploymentResultFailureFromJson(
        Map<String, dynamic> json) =>
    DeploymentResultFailure(
      reason: json['reason'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$DeploymentResultFailureToJson(
        DeploymentResultFailure instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'runtimeType': instance.$type,
    };
