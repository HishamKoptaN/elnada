import 'package:process_run/process_run.dart';

/// Local data source for Firebase CLI operations
class FirebaseLocalDataSource {
  /// Get releases using Firebase CLI
  Future<List<Map<String, dynamic>>> getReleases(
    String appId,
    String token,
  ) async {
    final result = await runExecutableArguments(
      'firebase',
      ['appdistribution:releases:list', '--app', appId, '--json'],
      environment: {'FIREBASE_TOKEN': token},
    );

    if (result.first.exitCode != 0) {
      throw Exception('Failed to get releases: ${result.first.stderr}');
    }

    final output = result.first.stdout.toString();
    // Parse JSON output
    final List<dynamic> releases = [];
    // Parse output line by line for JSON
    for (final line in output.split('\n')) {
      if (line.trim().startsWith('{')) {
        try {
          // This is a simplified parsing, adjust based on actual Firebase output
          releases.add({'raw': line});
        } catch (_) {}
      }
    }
    
    return releases.cast<Map<String, dynamic>>();
  }

  /// Delete a release using Firebase CLI
  Future<void> deleteRelease(
    String releaseId,
    String token,
  ) async {
    final result = await runExecutableArguments(
      'firebase',
      ['appdistribution:releases:delete', releaseId, '--force'],
      environment: {'FIREBASE_TOKEN': token},
    );

    if (result.first.exitCode != 0) {
      throw Exception('Failed to delete release: ${result.first.stderr}');
    }
  }

  /// Distribute APK to Firebase
  Future<void> distributeApk(
    String apkPath,
    String appId,
    String token, {
    String? releaseNotes,
    List<String>? testers,
    List<String>? groups,
  }) async {
    final args = [
      'appdistribution:distribute',
      apkPath,
      '--app',
      appId,
    ];

    if (releaseNotes != null) {
      args.addAll(['--release-notes', releaseNotes]);
    }

    if (testers != null && testers.isNotEmpty) {
      args.addAll(['--testers', testers.join(',')]);
    }

    if (groups != null && groups.isNotEmpty) {
      args.addAll(['--groups', groups.join(',')]);
    }

    final result = await runExecutableArguments(
      'firebase',
      args,
      environment: {'FIREBASE_TOKEN': token},
    );

    if (result.first.exitCode != 0) {
      throw Exception('Failed to distribute APK: ${result.first.stderr}');
    }
  }
}
