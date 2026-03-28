import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../domain/entities/firebase_release.dart';

part 'firebase_api_service.g.dart';

/// Retrofit API service for Firebase App Distribution
@RestApi()
abstract class FirebaseApiService {
  factory FirebaseApiService(Dio dio, {String baseUrl}) = _FirebaseApiService;

  @GET('/v1/projects/{projectNumber}/apps/{appId}/releases')
  Future<List<FirebaseRelease>> getReleases(
    @Header('Authorization') String auth,
    @Path('projectNumber') String projectNumber,
    @Path('appId') String appId,
  );

  @DELETE('/v1/projects/{projectNumber}/apps/{appId}/releases/{releaseId}')
  Future<void> deleteRelease(
    @Header('Authorization') String auth,
    @Path('projectNumber') String projectNumber,
    @Path('appId') String appId,
    @Path('releaseId') String releaseId,
  );
}
