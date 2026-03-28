import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

/// Dio-based API service for Shorebird
@singleton
class ShorebirdApiService {
  final Dio _dio;

  ShorebirdApiService(this._dio);

  Future<List<ReleaseInfo>> getReleases(String token, String appId) async {
    final response = await _dio.get(
      '/releases',
      queryParameters: {'app_id': appId},
      options: Options(headers: {'Authorization': token}),
    );

    final List<dynamic> releases = response.data as List<dynamic>;
    return releases
        .map((e) => ReleaseInfo.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> createPatch(String token, PatchRequest request) async {
    await _dio.post(
      '/patches',
      data: request.toJson(),
      options: Options(headers: {'Authorization': token}),
    );
  }
}

/// Release information model
class ReleaseInfo {
  final String version;
  final String platform;
  final DateTime createdAt;

  ReleaseInfo({
    required this.version,
    required this.platform,
    required this.createdAt,
  });

  factory ReleaseInfo.fromJson(Map<String, dynamic> json) => ReleaseInfo(
    version: json['version'] as String,
    platform: json['platform'] as String,
    createdAt: DateTime.parse(json['created_at'] as String),
  );

  Map<String, dynamic> toJson() => {
    'version': version,
    'platform': platform,
    'created_at': createdAt.toIso8601String(),
  };
}

/// Patch request model
class PatchRequest {
  final String appId;
  final String version;
  final String platform;

  PatchRequest({
    required this.appId,
    required this.version,
    required this.platform,
  });

  Map<String, dynamic> toJson() => {
    'app_id': appId,
    'version': version,
    'platform': platform,
  };
}
