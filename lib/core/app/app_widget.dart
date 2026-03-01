import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../features/customers/present/bloc/customers_bloc.dart';
import '../../features/daily_collections/present/bloc/daily_collections_bloc.dart';
import '../../features/daily_orders/present/bloc/daily_orders_bloc.dart';
import '../../features/daily_transactions/present/bloc/daily_transactions_bloc.dart';
import '../../features/products/present/bloc/products_bloc.dart';
import '../config/app_config.dart';
import '../di/dependency_injection.dart';
import '../routing/app_router.dart';

class TahaApp extends StatelessWidget {
  const TahaApp({super.key});
  @override
  Widget build(BuildContext context) {
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
      ],
      child: ScreenUtilInit(
        designSize: const Size(393, 852),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: AppConfig.appName,
            locale: const Locale('ar', 'EG'),
            routerConfig: AppRouter.create(),
            builder: (context, child) {
              return Directionality(
                textDirection: TextDirection.rtl,
                child: SafeArea(
                  top: true,
                  bottom: true,
                  left: true,
                  right: true,
                  child: child!,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
