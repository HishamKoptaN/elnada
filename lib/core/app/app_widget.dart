import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../features/customers/present/blocs/bloc/customers_bloc.dart';
import '../../features/daily_collections/present/bloc/daily_collections_bloc.dart';
import '../../features/daily_collections/present/update_collection_bloc/update_daily_collections_bloc.dart';
import '../../features/daily_orders/present/bloc/daily_orders_bloc.dart';
import '../../features/daily_transactions/present/bloc/daily_transactions_bloc.dart';
import '../../features/price_discount/present/update_collection_bloc/update_price_discount_bloc.dart';
import '../../features/products/present/bloc/products_bloc.dart';
import '../../features/return_products/present/bloc/return_products_bloc.dart';
import '../../features/transactions_details/present/bloc/transactions_details_bloc.dart';
import '../config/app_config.dart';
import '../di/dependency_injection.dart';
import '../routing/app_router.dart';
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
        BlocProvider<TransactionsDetailsBloc>(
          create: (_) => getIt<TransactionsDetailsBloc>(),
        ),
        BlocProvider<DailyCollectionsBloc>(
          create: (_) => getIt<DailyCollectionsBloc>(),
        ),
        BlocProvider<UpdateDailyCollectionsBloc>(
          create: (_) => getIt<UpdateDailyCollectionsBloc>(),
        ),
        BlocProvider<DailyOrdersBloc>(create: (_) => getIt<DailyOrdersBloc>()),
        BlocProvider<ReturnProductsBloc>(
          create: (_) => getIt<ReturnProductsBloc>(),
        ),
        BlocProvider<PriceDiscountBloc>(
          create: (_) => getIt<PriceDiscountBloc>(),
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
              return MediaQuery(
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
