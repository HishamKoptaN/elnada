import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'shorebird_api_service.g.dart';

/// Retrofit API service for Shorebird
@RestApi()
abstract class ShorebirdApiService {
  factory ShorebirdApiService(Dio dio, {String baseUrl}) = _ShorebirdApiService;

  @GET('/releases')
  Future<List<ReleaseInfo>> getReleases(
    @Header('Authorization') String token,
    @Query('app_id') String appId,
  );

  @POST('/patches')
  Future<void> createPatch(
    @Header('Authorization') String token,
    @Body() PatchRequest request,
  );
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
