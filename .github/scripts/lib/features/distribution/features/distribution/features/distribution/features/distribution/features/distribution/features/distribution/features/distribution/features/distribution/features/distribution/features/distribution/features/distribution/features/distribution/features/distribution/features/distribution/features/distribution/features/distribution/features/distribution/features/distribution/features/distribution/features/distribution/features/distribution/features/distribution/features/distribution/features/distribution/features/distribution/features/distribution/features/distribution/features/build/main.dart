import 'dart:io';

void main() async {
  final flavor = Platform.environment['FLAVOR'] ?? 'dev';
  final platform = Platform.environment['PLATFORM'] ?? 'android';

  print('🔨 Building app for $platform with flavor: $flavor');

  try {
    if (platform == 'android') {
      await buildAndroid(flavor);
    } else if (platform == 'windows') {
      await buildWindows(flavor);
    } else {
      throw Exception('Unsupported platform: $platform');
    }

    print('✅ Build completed successfully');
  } catch (e) {
    print('❌ Build failed: $e');
    exit(1);
  }
}

Future<void> buildAndroid(String flavor) async {
  print('📱 Building Android APK...');

  final result = await Process.run(
    'flutter',
    [
      'build',
      'apk',
      '--release',
      '--flavor',
      flavor,
      '--dart-define=ENV=$flavor',
    ],
    runInShell: true,
  );

  if (result.exitCode != 0) {
    throw Exception('Flutter build failed: ${result.stderr}');
  }

  print('✅ Android build completed');
}

Future<void> buildWindows(String flavor) async {
  print('🪟 Building Windows executable...');

  final result = await Process.run(
    'flutter',
    [
      'build',
      'windows',
      '--release',
      '--dart-define=ENV=$flavor',
    ],
    runInShell: true,
  );

  if (result.exitCode != 0) {
    throw Exception('Flutter build failed: ${result.stderr}');
  }

  print('✅ Windows build completed');
}
