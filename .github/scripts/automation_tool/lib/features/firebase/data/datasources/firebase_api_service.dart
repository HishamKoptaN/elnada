import 'package:dio/dio.dart';
import '../../domain/entities/firebase_release.dart';

/// Dio-based API service for Firebase App Distribution
class FirebaseApiService {
  final Dio _dio;

  FirebaseApiService(this._dio);

  Future<List<FirebaseRelease>> getReleases(
    String auth,
    String projectNumber,
    String appId,
  ) async {
    final response = await _dio.get(
      '/v1/projects/$projectNumber/apps/$appId/releases',
      options: Options(headers: {'Authorization': auth}),
    );

    final List<dynamic> releases = response.data['releases'] ?? [];
    return releases
        .map((e) => FirebaseRelease.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> deleteRelease(
    String auth,
    String projectNumber,
    String appId,
    String releaseId,
  ) async {
    await _dio.delete(
      '/v1/projects/$projectNumber/apps/$appId/releases/$releaseId',
      options: Options(headers: {'Authorization': auth}),
    );
  }
}
