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
import 'package:upgrader/upgrader.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Upgrader.clearSavedSettings();
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

void _handleError({
  required Object error,
  required StackTrace stackTrace,
  required String context,
}) {
  runApp(
    ErrorApp(
      errorDetails: FlutterErrorDetails(
        exception: error,
        stack: stackTrace,
        library: 'app',
        context: ErrorDescription(context),
      ),
    ),
  );
}

void setupAutoUpdater() async {
  String feedURL =
      'https://raw.githubusercontent.com/USER/REPO/dev/appcast.xml';
  await autoUpdater.setFeedURL(feedURL);
  await autoUpdater.setScheduledCheckInterval(3600);
  await autoUpdater.checkForUpdates();
}
