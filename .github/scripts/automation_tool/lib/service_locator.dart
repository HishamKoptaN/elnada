import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'core/dio_client.dart';
import 'core/config.dart';
import 'package:abujena_automation/injection.dart';


void setupLocator() {
  getIt.registerLazySingleton(() => DioClient.create());
}
