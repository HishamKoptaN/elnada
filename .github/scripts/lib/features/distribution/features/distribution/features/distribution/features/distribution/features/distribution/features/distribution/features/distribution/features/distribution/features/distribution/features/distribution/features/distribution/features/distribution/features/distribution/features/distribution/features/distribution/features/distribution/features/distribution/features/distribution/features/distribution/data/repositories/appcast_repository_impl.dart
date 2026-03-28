import 'dart:io';

import '../../domain/repositories/appcast_repository.dart';

class AppcastRepositoryImpl implements AppcastRepository {
  @override
  Future<void> updateAppcast(String version, String repo) async {
    final file = File('android_appcast.xml');
    if (!await file.exists()) return;

    final content = await file.readAsString();
    final updatedContent = _buildUpdatedContent(content, version, repo);
    await file.writeAsString(updatedContent);
  }

  String _buildUpdatedContent(String content, String version, String repo) {
    final apkUrl = "https://github.com/$repo/releases/download/v$version/app-release.apk";
    
    return content
      .replaceAll(RegExp(r'sparkle:version="[^"]*"'), 'sparkle:version="$version"')
      .replaceAll(RegExp(r'url="[^"]*"'), 'url="$apkUrl"');
  }
}
