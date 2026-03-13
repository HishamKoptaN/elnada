import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioLoggerInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // طباعة الرابط عند الإرسال
    debugPrint(
      '🌐 [REQUEST] => METHOD: ${options.method} | URL: ${options.uri}',
    );

    // اختياري: طباعة البيانات المرسلة (Body) إذا أردت
    if (options.data != null) {
      debugPrint('📦 DATA: ${options.data}');
    }

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // طباعة حالة الرد عند النجاح
    debugPrint(
      '✅ [RESPONSE] => STATUS: ${response.statusCode} | URL: ${response.requestOptions.uri}',
    );
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // طباعة الخطأ بالتفصيل
    debugPrint(
      '❌ [ERROR] => STATUS: ${err.response?.statusCode} | URL: ${err.requestOptions.uri}',
    );
    debugPrint('💬 MESSAGE: ${err.message}');
    return super.onError(err, handler);
  }
}
