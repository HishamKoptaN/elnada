// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deployment_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeploymentConfigImpl _$$DeploymentConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$DeploymentConfigImpl(
      flavor: json['flavor'] as String,
      shorebirdToken: json['shorebirdToken'] as String,
      shorebirdAppId: json['shorebirdAppId'] as String,
      firebaseToken: json['firebaseToken'] as String?,
      githubRepository: json['githubRepository'] as String?,
      skipFirebase: json['skipFirebase'] as bool? ?? false,
      skipGithub: json['skipGithub'] as bool? ?? false,
    );

Map<String, dynamic> _$$DeploymentConfigImplToJson(
        _$DeploymentConfigImpl instance) =>
    <String, dynamic>{
      'flavor': instance.flavor,
      'shorebirdToken': instance.shorebirdToken,
      'shorebirdAppId': instance.shorebirdAppId,
      'firebaseToken': instance.firebaseToken,
      'githubRepository': instance.githubRepository,
      'skipFirebase': instance.skipFirebase,
      'skipGithub': instance.skipGithub,
    };
