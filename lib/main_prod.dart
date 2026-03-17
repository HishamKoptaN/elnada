import 'dart:async';
import 'package:auto_updater/auto_updater.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'config/env_config.dart';
import 'core/app/app_widget.dart';
import 'core/app/error_handler.dart';
import 'core/app_initializer.dart';
import 'core/app_observer.dart';
import 'core/di/dependency_injection.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:universal_io/io.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

// Prod environment specific main
Future<void> main() async {
  // Force prod environment
  if (kDebugMode) {
    print('🔍 FORCED: Running in PROD environment');
    print('🔍 Current Environment: ${EnvConfig.currentEnv}');
    print('🔍 Is Dev: ${EnvConfig.isDev}');
    print('🔍 Is Prod: ${EnvConfig.isProd}');
  }
  
  WidgetsFlutterBinding.ensureInitialized();
  
  if (Platform.isWindows) {
    if (Platform.isWindows) {
      await setupAutoUpdater();
    }
    await autoUpdater.setScheduledCheckInterval(3600);
  }
  await initLogging();
  try {
    await AppInitializer.initialize();
    await configureDependencies(environment: EnvConfig.config.envName);
    Bloc.observer = AppBlocObserver();
    if (kDebugMode) {}
    await initializeDateFormatting('ar', null);
    runApp(const TahaApp());
  } catch (error, stackTrace) {
    _handleError(
      error: error,
      stackTrace: stackTrace,
      context: 'app initialization',
    );
  }
}

Future<void> initLogging() async {
  try {
    final dir = await getApplicationSupportDirectory();
    final file = File('${dir.path}/log.txt');
    if (!await dir.exists()) {
      await dir.create(recursive: true);
    }
    if (await file.exists() && await file.length() > 2 * 1024 * 1024) {
      await file.delete();
    }
  } catch (e) {
    if (kDebugMode) {
      print('Failed to initialize logging: $e');
    }
  }
}

Future<void> setupAutoUpdater() async {
  final env = "prod";
  await autoUpdater.setFeedURL(
    'https://raw.githubusercontent.com/HishamKoptaN/elnada/refs/heads/$env/desktop_appcast.xml',
  );
  await autoUpdater.setScheduledCheckInterval(3600);
}

void _handleError({
  required Object error,
  required StackTrace stackTrace,
  required String context,
}) {
  if (kDebugMode) {
    print('Error in $context: $error');
    print('StackTrace: $stackTrace');
  }
}
