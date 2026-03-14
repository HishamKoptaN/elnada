import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../config/env_config.dart';
import '../../networking/slow_upload_interceptor.dart';
import 'api_module.dart';
import 'dio_logger_interceptor.dart';

@module
abstract class DioModule {
  //! default dio
  @singleton
  Dio dio(
    AuthInterceptor authInterceptor,
    LoggingInterceptor loggingInterceptor,
  ) {
    final dio = Dio(
      BaseOptions(
        baseUrl: EnvConfig.config.baseUrl,
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );
    (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (client) {
          client.badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
          return client;
        };
    dio.interceptors.addAll([
      DioLoggerInterceptor(),
      authInterceptor,
      authInterceptor,
      LogInterceptor(responseBody: true),
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        compact: true,
      ),
    ]);
    if (kDebugMode) {
      dio.interceptors.add(
        SlowUploadInterceptor(bytesPerSecond: 64, chunkSize: 1024),
      );
    }
    return dio;
  }
}
