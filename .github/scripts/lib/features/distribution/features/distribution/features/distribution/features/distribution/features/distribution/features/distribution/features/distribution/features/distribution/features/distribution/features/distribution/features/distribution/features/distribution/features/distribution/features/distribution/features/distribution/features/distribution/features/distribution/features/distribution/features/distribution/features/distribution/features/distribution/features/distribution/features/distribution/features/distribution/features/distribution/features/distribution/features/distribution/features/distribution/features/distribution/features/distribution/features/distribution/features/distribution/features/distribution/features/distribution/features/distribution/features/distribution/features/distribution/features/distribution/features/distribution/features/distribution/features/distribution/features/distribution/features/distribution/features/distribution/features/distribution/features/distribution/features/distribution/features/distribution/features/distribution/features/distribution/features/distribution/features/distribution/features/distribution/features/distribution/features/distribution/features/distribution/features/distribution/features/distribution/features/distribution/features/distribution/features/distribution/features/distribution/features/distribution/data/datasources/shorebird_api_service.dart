import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'shorebird_api_service.g.dart';

@RestApi(baseUrl: 'https://api.shorebird.dev')
abstract class ShorebirdApiService {
  factory ShorebirdApiService(Dio dio, {String baseUrl}) = _ShorebirdApiService;

  @GET('/api/v1/apps/{appId}/releases')
  Future<List<ReleaseInfo>> getReleases(
    @Path('appId') String appId,
    @Header('Authorization') String token,
  );

  @POST('/api/v1/apps/{appId}/patches')
  Future<void> createPatch(
    @Path('appId') String appId,
    @Header('Authorization') String token,
    @Body() PatchRequest request,
  );
}

class ReleaseInfo {
  final String version;
  final String platform;
  final DateTime createdAt;

  ReleaseInfo({
    required this.version,
    required this.platform,
    required this.createdAt,
  });

  factory ReleaseInfo.fromJson(Map<String, dynamic> json) =>
      ReleaseInfo(
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

class PatchRequest {
  final String version;
  final String platform;

  PatchRequest({
    required this.version,
    required this.platform,
  });

  Map<String, dynamic> toJson() => {
        'version': version,
        'platform': platform,
      };
}
