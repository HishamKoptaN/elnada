import 'package:injectable/injectable.dart';
import 'package:process_run/process_run.dart';
import '../../domain/entities/deployment_config.dart';
import '../../domain/entities/version_info.dart';

/// Local data source for Shorebird CLI operations
@singleton
class ShorebirdLocalDataSource {
  /// Check if a patch is possible
  Future<bool> isPatchPossible(DeploymentConfig config) async {
    try {
      print('🔍 Checking if patch is possible for flavor: ${config.flavor}');
      final result = await runExecutableArguments(
        'shorebird',
        ['patch', '--dry-run', '--flavor=${config.flavor}'],
        environment: {'SHOREBIRD_TOKEN': config.shorebirdToken},
      );
      print('   Exit code: ${result.exitCode}');
      print('   Stdout: ${result.stdout}');
      print('   Stderr: ${result.stderr}');
      return result.exitCode == 0;
    } catch (e) {
      print('   ❌ Error checking patch possibility: $e');
      return false;
    }
  }

  /// Execute patch
  Future<void> executePatch(DeploymentConfig config) async {
    print('🚀 Executing patch for flavor: ${config.flavor}');
    final result = await runExecutableArguments(
      'shorebird',
      ['patch', '--flavor=${config.flavor}', '--force'],
      environment: {'SHOREBIRD_TOKEN': config.shorebirdToken},
    );

    print('   Exit code: ${result.exitCode}');
    print('   Stdout: ${result.stdout}');
    if (result.stderr.toString().isNotEmpty) {
      print('   Stderr: ${result.stderr}');
    }

    if (result.exitCode != 0) {
      throw Exception('Patch failed: ${result.stderr}');
    }
    print('   ✅ Patch executed successfully');
  }

  /// Check if release is possible
  Future<bool> isReleasePossible(DeploymentConfig config) async {
    try {
      print('🔍 Checking if release is possible for flavor: ${config.flavor}');
      final result = await runExecutableArguments(
        'shorebird',
        ['release', '--dry-run', '--flavor=${config.flavor}'],
        environment: {'SHOREBIRD_TOKEN': config.shorebirdToken},
      );
      print('   Exit code: ${result.exitCode}');
      print('   Stdout: ${result.stdout}');
      print('   Stderr: ${result.stderr}');
      return result.exitCode == 0;
    } catch (e) {
      print('   ❌ Error checking release possibility: $e');
      return false;
    }
  }

  /// Execute release
  Future<void> executeRelease(DeploymentConfig config) async {
    print('🚀 Executing release for flavor: ${config.flavor}');
    final result = await runExecutableArguments(
      'shorebird',
      ['release', '--flavor=${config.flavor}'],
      environment: {'SHOREBIRD_TOKEN': config.shorebirdToken},
    );

    print('   Exit code: ${result.exitCode}');
    print('   Stdout: ${result.stdout}');
    if (result.stderr.toString().isNotEmpty) {
      print('   Stderr: ${result.stderr}');
    }

    if (result.exitCode != 0) {
      throw Exception('Release failed: ${result.stderr}');
    }
    print('   ✅ Release executed successfully');
  }

  /// Get existing releases from Shorebird CLI
  Future<List<VersionInfo>> getExistingReleases(DeploymentConfig config) async {
    final result = await runExecutableArguments(
      'shorebird',
      ['releases', 'list', '--flavor=${config.flavor}'],
      environment: {'SHOREBIRD_TOKEN': config.shorebirdToken},
    );

    // Parse output to extract version info
    final lines = result.stdout.toString().split('\n');
    final versions = <VersionInfo>[];

    for (final line in lines) {
      // Parse version from output like "android v1.0.0+1 (production)"
      final match = RegExp(r'v(\d+\.\d+\.\d+)\+(\d+)').firstMatch(line);
      if (match != null) {
        final version = '${match.group(1)}+${match.group(2)}';
        versions.add(VersionInfo.fromPubspecVersion(version));
      }
    }

    return versions;
  }
}
