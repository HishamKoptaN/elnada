import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'dio_client.dart';

@module
abstract class DioModule {
  @singleton
  Dio get dio => DioClient.create();
}
