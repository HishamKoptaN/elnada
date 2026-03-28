import 'package:injectable/injectable.dart';
import 'package:process_run/process_run.dart';
import '../../domain/entities/deployment_config.dart';
import '../../domain/entities/version_info.dart';

/// Local data source for Shorebird CLI operations
@singleton
class ShorebirdLocalDataSource {
  /// Check if a patch is possible (needs existing release)
  Future<bool> isPatchPossible(DeploymentConfig config) async {
    try {
      print('🔍 Checking if patch is possible for flavor: ${config.flavor}');
      // Check if there are any existing releases
      final releases = await getExistingReleases(config);
      final possible = releases.isNotEmpty;
      print('   Found ${releases.length} releases, patch possible: $possible');
      return possible;
    } catch (e) {
      print('   ❌ Error checking patch possibility: $e');
      return false;
    }
  }

  /// Execute patch
  Future<void> executePatch(DeploymentConfig config) async {
    print('🚀 Executing patch for flavor: ${config.flavor}');
    final args = ['patch', 'android', '--flavor=${config.flavor}', '--force'];
    print('   Running: shorebird ${args.join(" ")}');
    final result = await runExecutableArguments(
      'shorebird',
      args,
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

  /// Check if a release is possible (version doesn't exist yet)
  Future<bool> isReleasePossible(
    DeploymentConfig config,
    VersionInfo version,
  ) async {
    try {
      print('🔍 Checking if release is possible for flavor: ${config.flavor}');
      // Check if this version already exists
      final releases = await getExistingReleases(config);
      final versionExists = releases.any(
        (r) => r.cleanVersion == version.cleanVersion,
      );
      final possible = !versionExists;
      print(
        '   Version ${version.cleanVersion} exists: $versionExists, release possible: $possible',
      );
      return possible;
    } catch (e) {
      print('   ❌ Error checking release possibility: $e');
      return false;
    }
  }

  /// Execute release
  Future<void> executeRelease(DeploymentConfig config) async {
    print('🚀 Executing release for flavor: ${config.flavor}');
    // Shorebird uses --flavor flag but format may vary by version
    final args = ['release', 'android', '--flavor=${config.flavor}'];
    print('   Running: shorebird ${args.join(" ")}');
    final result = await runExecutableArguments(
      'shorebird',
      args,
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
    print('   📋 Getting existing releases for flavor: ${config.flavor}');
    final result = await runExecutableArguments(
      'shorebird',
      ['releases', 'list', '--flavor=${config.flavor}'],
      environment: {'SHOREBIRD_TOKEN': config.shorebirdToken},
    );

    print('   Raw output:\n${result.stdout}');

    // Parse output to extract version info
    final lines = result.stdout.toString().split('\n');
    final versions = <VersionInfo>[];

    for (final line in lines) {
      // Parse version from output like "android v1.0.0+1 (production)"
      final match = RegExp(r'v(\d+\.\d+\.\d+)\+(\d+)').firstMatch(line);
      if (match != null) {
        final version = '${match.group(1)}+${match.group(2)}';
        print('   Found version: $version');
        versions.add(VersionInfo.fromPubspecVersion(version));
      }
    }

    print('   Total versions found: ${versions.length}');
    return versions;
  }
}
