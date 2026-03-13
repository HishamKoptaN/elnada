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
import 'package:universal_io/io.dart';

import 'dart:io';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLogging();
  await Upgrader.clearSavedSettings();
  setupAutoUpdater();
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
    // 1. الحصول على مسار المجلد (AppData/Local في ويندوز)
    final dir = await getApplicationSupportDirectory();
    final file = File('${dir.path}/log.txt');

    // 2. التأكد من إنشاء المجلد إذا لم يكن موجوداً
    if (!await dir.exists()) {
      await dir.create(recursive: true);
    }

    // 3. إدارة حجم الملف (إذا زاد عن 2 ميجابايت، ابدأ ملف جديد)
    if (await file.exists() && await file.length() > 2 * 1024 * 1024) {
      await file.writeAsString(
        '${DateTime.now()}: --- السجلات قديمة (تم تصفير الملف للحفاظ على المساحة) ---\n',
        mode: FileMode.write, // FileMode.write يمسح القديم ويكتب من جديد
      );
    }

    // 4. حفظ النسخة الأصلية من debugPrint للطباعة في الـ Console أثناء التطوير
    final DebugPrintCallback oldDebugPrint = debugPrint;

    // 5. إعادة تعريف debugPrint لتكتب في الملف وفي الـ Console معاً
    debugPrint = (String? message, {int? wrapWidth}) {
      // طباعة في الـ Console (للمطور)
      oldDebugPrint(message, wrapWidth: wrapWidth);

      // كتابة في ملف log.txt (للبرودكشن)
      file.writeAsString(
        '${DateTime.now().toIso8601String()}: $message\n',
        mode: FileMode.append,
        flush: false, // تحسين الأداء
      );
    };

    // طباعة مسار الملف لمرة واحدة عند تشغيل التطبيق (لتسهيل وصولك إليه)
    debugPrint('🚀 نظام السجلات جاهز. المسار: ${file.path}');
  } catch (e) {
    // في حال فشل إنشاء السجلات (مشكلة في الصلاحيات مثلاً)
    print('❌ فشل تهيئة نظام السجلات: $e');
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
  if (!Platform.isWindows) return;

  String feedURL =
      'https://raw.githubusercontent.com/HishamKoptaN/elnada/${EnvConfig.config.envName}/desktop_appcast.xml';
  await autoUpdater.setFeedURL(feedURL);
  await autoUpdater.setScheduledCheckInterval(3600);
  await autoUpdater.checkForUpdates();
}
