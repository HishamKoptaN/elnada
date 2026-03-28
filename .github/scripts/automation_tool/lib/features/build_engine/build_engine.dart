import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:process_run/process_run.dart';

/// Build engine for Flutter apps
@singleton
class BuildEngine {
  final String _projectRoot;

  BuildEngine(@Named('projectRoot') this._projectRoot);

  /// Build Android APK
  Future<String> buildAndroid({
    String flavor = 'prod',
    bool release = true,
  }) async {
    print('🔨 Building Android APK (flavor: $flavor)...');

    final args = ['build', 'apk', '--flavor=$flavor', if (release) '--release'];

    final result = await runExecutableArguments(
      'flutter',
      args,
      workingDirectory: _projectRoot,
    );

    if (result.exitCode != 0) {
      throw Exception('Android build failed: ${result.stderr}');
    }

    // Find APK path from output
    final output = result.stdout.toString();
    final apkPath = _extractApkPath(output);

    if (apkPath == null || !File(apkPath).existsSync()) {
      // Default path based on flavor
      final defaultPath =
          '$_projectRoot/build/app/outputs/flutter-apk/app-$flavor-release.apk';
      if (File(defaultPath).existsSync()) {
        return defaultPath;
      }
      throw Exception('APK not found after build');
    }

    return apkPath;
  }

  /// Build Windows executable
  Future<String> buildWindows({bool release = true}) async {
    print('🔨 Building Windows app...');

    final args = ['build', 'windows', if (release) '--release'];

    final result = await runExecutableArguments(
      'flutter',
      args,
      workingDirectory: _projectRoot,
    );

    if (result.exitCode != 0) {
      throw Exception('Windows build failed: ${result.stderr}');
    }

    // Find executable path
    final exePath =
        '$_projectRoot/build/windows/x64/runner/Release/Abujena_Dawajen.exe';

    if (!File(exePath).existsSync()) {
      throw Exception('Windows executable not found after build');
    }

    return exePath;
  }

  /// Get version from pubspec.yaml
  Future<String> getVersion() async {
    final pubspecFile = File('$_projectRoot/pubspec.yaml');

    if (!pubspecFile.existsSync()) {
      throw Exception('pubspec.yaml not found');
    }

    final content = await pubspecFile.readAsString();
    final versionMatch = RegExp(
      r'version:\s*(\d+\.\d+\.\d+\+\d+)',
    ).firstMatch(content);

    if (versionMatch == null) {
      throw Exception('Version not found in pubspec.yaml');
    }

    return versionMatch.group(1)!;
  }

  String? _extractApkPath(String output) {
    // Look for path in output like "Built build/app/outputs/flutter-apk/app-release.apk"
    final match = RegExp(r'Built\s+(\S+\.apk)').firstMatch(output);
    return match?.group(1);
  }
}
