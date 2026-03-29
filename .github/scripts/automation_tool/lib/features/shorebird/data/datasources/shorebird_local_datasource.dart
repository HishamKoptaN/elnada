import 'package:injectable/injectable.dart';
import 'package:process_run/process_run.dart';
import '../../domain/entities/deployment_config.dart';
import '../../domain/entities/version_info.dart';

/// Local data source for Shorebird CLI operations
@singleton
class ShorebirdLocalDataSource {
  /// Check if a patch is possible (needs existing release)
  Future<bool> isPatchPossible(DeploymentConfig config) async {
    // We can't check without listing releases, assume possible
    // The actual check happens when we try to patch
    return true;
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
    // We can't check without listing releases, assume possible
    // The actual check happens when we try to release
    return true;
  }

  /// Execute release
  Future<void> executeRelease(DeploymentConfig config) async {
    print('🚀 Executing release for flavor: ${config.flavor}');
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
    // Shorebird CLI no longer supports listing releases directly
    // Return empty list - we'll handle conflicts when executing
    return [];
  }
}
