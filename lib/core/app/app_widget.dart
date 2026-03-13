import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upgrader/upgrader.dart';
import '../../config/env_config.dart';
import '../../features/customers/present/bloc/customers_bloc.dart';
import '../../features/daily_collections/present/bloc/daily_collections_bloc.dart';
import '../../features/daily_orders/present/bloc/daily_orders_bloc.dart';
import '../../features/daily_transactions/present/bloc/daily_transactions_bloc.dart';
import '../../features/products/present/bloc/products_bloc.dart';
import '../../features/return_products/present/bloc/return_products_bloc.dart';
import '../config/app_config.dart';
import '../di/dependency_injection.dart';
import '../routing/app_router.dart';
import 'global_variable.dart';
import 'package:version/version.dart';

class TahaApp extends StatelessWidget {
  const TahaApp({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider<CustomersBloc>(create: (_) => getIt<CustomersBloc>()),
        BlocProvider<ProductsBloc>(create: (_) => getIt<ProductsBloc>()),
        BlocProvider<DailyTransactionsBloc>(
          create: (_) => getIt<DailyTransactionsBloc>(),
        ),
        BlocProvider<DailyCollectionsBloc>(
          create: (_) => getIt<DailyCollectionsBloc>(),
        ),
        BlocProvider<DailyOrdersBloc>(create: (_) => getIt<DailyOrdersBloc>()),
        BlocProvider<ReturnProductsBloc>(
          create: (_) => getIt<ReturnProductsBloc>(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(1366, 705),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: AppConfig.appName,
            locale: const Locale('ar', 'EG'),
            routerConfig: AppRouter.create(),
            builder: (context, child) {
              final mediaQueryData = MediaQuery.of(context);
              return UpgradeAlert(
                dialogStyle: UpgradeDialogStyle.cupertino,
                onIgnore: () {
                  return true;
                },
                onLater: () {
                  return true;
                },
                onUpdate: () {
                  return true;
                },
                shouldPopScope: () {
                  return true;
                },
                showPrompt: true,
                showIgnore: false,
                showLater: false,
                showReleaseNotes: true,
                cupertinoButtonTextStyle: const TextStyle(fontSize: 7.5),
                upgrader: Upgrader(
                  storeController: UpgraderStoreController(
                    onAndroid: () {
                      return UpgraderAppcastStore(
                        appcastURL:
                            'https://raw.githubusercontent.com/HishamKoptaN/elnada/${EnvConfig.config.envName}/android_appcast.xml',
                        osVersion: Version.parse('1.0.0'),
                      );
                    },
                    onWindows: () {
                      return UpgraderAppcastStore(
                        appcastURL:
                            'https://raw.githubusercontent.com/HishamKoptaN/elnada/${EnvConfig.config.envName}/desktop_appcast.xml',
                        osVersion: Version.parse('10.0.0'),
                      );
                    },
                  ),
                  messages: CustomMessages(),
                  durationUntilAlertAgain: kReleaseMode
                      ? const Duration(hours: 1)
                      : const Duration(seconds: 5000),
                  languageCode: 'ar',
                  debugLogging: true,
                  // debugDisplayAlways: true,
                ),
                barrierDismissible: false,
                navigatorKey: GlobalVariable.navState,
                child: MediaQuery(
                  data: mediaQueryData.copyWith(
                    textScaler: TextScaler.linear(getTextScaler(width: width)),
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: SafeArea(
                      top: true,
                      bottom: true,
                      left: true,
                      right: true,
                      child: child!,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

double getTextScaler({required double width}) {
  if (width >= 1024) {
    return 1;
  } else if (width >= 600) {
    return 3;
  } else {
    return 2.5;
  }
}

class CustomMessages extends UpgraderMessages {
  @override
  String get title => 'تحديث جديد';

  @override
  String get body => '';

  @override
  String get prompt => '';

  @override
  String get releaseNotes => '';
}
