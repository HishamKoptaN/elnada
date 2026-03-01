import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class InjectionModule {
  @singleton
  InternetConnection get connectionChecker =>
      InternetConnection.createInstance();
  @preResolve
  Future<SharedPreferencesAsync> get prefs async =>
      await SharedPreferencesAsync();
  @singleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();
}
