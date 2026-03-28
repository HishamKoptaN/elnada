import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'core/dio_client.dart';
import 'core/config.dart';

final GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton(() => DioClient.create());
}
