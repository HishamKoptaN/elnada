import 'dart:io';

import '../../domain/entities/deployment_config.dart';
import '../../domain/entities/version_info.dart';
import '../../domain/repositories/config_repository.dart';

class ConfigRepositoryImpl implements ConfigRepository {
  @override
  DeploymentConfig loadConfiguration() {
    final flavor = Platform.environment['FLAVOR'] ?? 'dev';
    final token = Platform.environment['SHOREBIRD_TOKEN'];
    final repo = Platform.environment['GITHUB_REPOSITORY'];

    if (token == null) {
      throw Exception('SHOREBIRD_TOKEN is missing');
    }

    return DeploymentConfig(flavor: flavor, token: token, repo: repo);
  }

  @override
  VersionInfo extractVersionFromPubspec() {
    final pubspecContent = File('pubspec.yaml').readAsStringSync();
    final versionMatch = RegExp(r'version:\s*([^\s]+)').firstMatch(pubspecContent);
    final fullVersion = versionMatch?.group(1) ?? '1.0.0';
    final cleanVersion = fullVersion.split('+')[0];
    
    return VersionInfo(fullVersion: fullVersion, cleanVersion: cleanVersion);
  }
}
