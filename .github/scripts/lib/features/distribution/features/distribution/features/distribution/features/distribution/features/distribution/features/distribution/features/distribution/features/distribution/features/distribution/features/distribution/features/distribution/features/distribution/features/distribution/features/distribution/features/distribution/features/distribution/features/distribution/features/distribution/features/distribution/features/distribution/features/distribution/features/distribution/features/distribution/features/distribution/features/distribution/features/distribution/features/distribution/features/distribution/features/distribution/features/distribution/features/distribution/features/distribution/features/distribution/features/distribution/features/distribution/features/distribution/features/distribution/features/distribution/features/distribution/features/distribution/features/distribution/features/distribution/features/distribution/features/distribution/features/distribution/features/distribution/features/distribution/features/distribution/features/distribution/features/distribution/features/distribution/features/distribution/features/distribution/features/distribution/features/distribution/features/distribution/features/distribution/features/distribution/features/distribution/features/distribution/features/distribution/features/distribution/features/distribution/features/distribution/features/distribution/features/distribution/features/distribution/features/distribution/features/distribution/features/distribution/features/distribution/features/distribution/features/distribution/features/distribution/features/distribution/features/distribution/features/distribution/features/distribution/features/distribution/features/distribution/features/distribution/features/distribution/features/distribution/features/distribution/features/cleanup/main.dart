import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

void main() async {
  final firebaseAppId = Platform.environment['FIREBASE_APP_ID'];
  final projectNumber = Platform.environment['FIREBASE_PROJECT_NUMBER'];
  final accessToken = Platform.environment['GOOGLE_ACCESS_TOKEN'];

  if (firebaseAppId == null || accessToken == null) {
    print('Missing required environment variables');
    exit(1);
  }

  print('🧹 Starting Firebase cleanup...');

  try {
    await cleanupFirebaseReleases(
      appId: firebaseAppId,
      projectNumber: projectNumber!,
      accessToken: accessToken,
      keepLatest: 3,
    );
    print('✅ Cleanup completed successfully');
  } catch (e) {
    print('❌ Cleanup failed: $e');
    exit(1);
  }
}

Future<void> cleanupFirebaseReleases({
  required String appId,
  required String projectNumber,
  required String accessToken,
  required int keepLatest,
}) async {
  // Get all releases from Firebase
  final releases = await _fetchFirebaseReleases(
    appId: appId,
    projectNumber: projectNumber,
    accessToken: accessToken,
  );

  if (releases.length <= keepLatest) {
    print('📋 Found ${releases.length} releases, nothing to clean');
    return;
  }

  // Sort by version code (newest first)
  releases.sort((a, b) => b['versionCode'].compareTo(a['versionCode']));

  // Keep only the latest N releases
  final toDelete = releases.skip(keepLatest).toList();

  print('🗑️  Deleting ${toDelete.length} old releases...');

  for (final release in toDelete) {
    final releaseId = release['id'];
    await _deleteFirebaseRelease(
      appId: appId,
      releaseId: releaseId,
      accessToken: accessToken,
    );
    print('   Deleted release: ${release['version']}');
  }
}

Future<List<Map<String, dynamic>>> _fetchFirebaseReleases({
  required String appId,
  required String projectNumber,
  required String accessToken,
}) async {
  final url = Uri.parse(
    'https://firebaseappdistribution.googleapis.com/v1/projects/$projectNumber/apps/$appId/releases?pageSize=100',
  );

  final response = await http.get(
    url,
    headers: {'Authorization': 'Bearer $accessToken'},
  );

  if (response.statusCode != 200) {
    throw Exception('Failed to fetch releases: ${response.body}');
  }

  final data = jsonDecode(response.body) as Map<String, dynamic>;
  return (data['releases'] as List<dynamic>).cast<Map<String, dynamic>>();
}

Future<void> _deleteFirebaseRelease({
  required String appId,
  required String releaseId,
  required String accessToken,
}) async {
  final url = Uri.parse(
    'https://firebaseappdistribution.googleapis.com/v1/$releaseId',
  );

  final response = await http.delete(
    url,
    headers: {'Authorization': 'Bearer $accessToken'},
  );

  if (response.statusCode != 200 && response.statusCode != 204) {
    throw Exception('Failed to delete release: ${response.body}');
  }
}
