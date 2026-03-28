import 'dart:io';

import '../../domain/entities/deployment_config.dart';
import '../../domain/repositories/deployment_repository.dart';

class DeploymentRepositoryImpl implements DeploymentRepository {
  @override
  Future<bool> isPatchPossible(DeploymentConfig config) async {
    final result = await Process.run('shorebird', [
      'patch', 'android', '--flavor', config.flavor, '--dry-run'
    ], environment: {'SHOREBIRD_TOKEN': config.token});
    
    return result.exitCode == 0;
  }

  @override
  Future<void> executePatch(DeploymentConfig config) async {
    await _runCommand('shorebird', [
      'patch', 'android', 
      '--flavor', config.flavor, 
      '--target', 'lib/main.dart', 
      '--', '--dart-define=ENV=${config.flavor}'
    ], config.token);
  }

  @override
  Future<bool> isReleasePossible(DeploymentConfig config) async {
    final result = await Process.run('shorebird', [
      'release', 'android', '--flavor', config.flavor, '--dry-run'
    ], environment: {'SHOREBIRD_TOKEN': config.token});
    
    return result.exitCode == 0;
  }

  @override
  Future<void> executeRelease(DeploymentConfig config) async {
    await _runCommand('shorebird', [
      'release', 'android', 
      '--flavor', config.flavor, 
      '--artifact', 'apk', 
      '--target', 'lib/main.dart', 
      '--', '--dart-define=ENV=${config.flavor}'
    ], config.token);
  }

  Future<void> _runCommand(String cmd, List<String> args, String token) async {
    final process = await Process.start(
      cmd,
      args,
      environment: {'SHOREBIRD_TOKEN': token},
    );
    await stdout.addStream(process.stdout);
    await stderr.addStream(process.stderr);
    final exitCode = await process.exitCode;
    if (exitCode != 0) throw Exception('Command failed with exit code $exitCode');
  }
}
