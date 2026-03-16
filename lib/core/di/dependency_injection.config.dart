// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../config/env.dart' as _i557;
import '../../features/customers/data/datasources/customers_api.dart' as _i836;
import '../../features/customers/data/repo_impl/customers_repo_impl.dart'
    as _i16;
import '../../features/customers/domain/repo/customers_repo.dart' as _i1055;
import '../../features/customers/domain/usecases/customers_use_cases.dart'
    as _i353;
import '../../features/customers/present/bloc/customers_bloc.dart' as _i3;
import '../../features/daily_collections/data/datasources/daily_collections_api.dart'
    as _i903;
import '../../features/daily_collections/data/repo_impl/daily_collections_repo_impl.dart'
    as _i411;
import '../../features/daily_collections/domain/repo/daily_collections_repo.dart'
    as _i114;
import '../../features/daily_collections/domain/usecases/daily_collections_use_cases.dart'
    as _i243;
import '../../features/daily_collections/present/bloc/daily_collections_bloc.dart'
    as _i353;
import '../../features/daily_collections/present/update_collection_bloc/update_daily_collections_bloc.dart'
    as _i795;
import '../../features/daily_orders/data/datasources/daily_orders_api.dart'
    as _i682;
import '../../features/daily_orders/data/repo_impl/daily_orders_repo_impl.dart'
    as _i668;
import '../../features/daily_orders/domain/repo/daily_orders_repo.dart'
    as _i550;
import '../../features/daily_orders/domain/usecases/daily_orders_use_cases.dart'
    as _i394;
import '../../features/daily_orders/present/bloc/daily_orders_bloc.dart'
    as _i601;
import '../../features/daily_transactions/data/datasources/daily_transactions_api.dart'
    as _i116;
import '../../features/daily_transactions/data/repo_impl/daily_transactions_repo_impl.dart'
    as _i508;
import '../../features/daily_transactions/domain/repo/daily_transactions_repo.dart'
    as _i79;
import '../../features/daily_transactions/domain/usecases/daily_transactions_use_cases.dart'
    as _i274;
import '../../features/daily_transactions/present/bloc/daily_transactions_bloc.dart'
    as _i14;
import '../../features/products/data/datasources/products_api.dart' as _i38;
import '../../features/products/data/repo_impl/products_repo_impl.dart'
    as _i249;
import '../../features/products/domain/repo/product_repo.dart' as _i311;
import '../../features/products/domain/usecases/product_use_cases.dart'
    as _i703;
import '../../features/products/present/bloc/products_bloc.dart' as _i275;
import '../../features/return_products/data/datasources/return_products_api.dart'
    as _i146;
import '../../features/return_products/data/repo_impl/return_products_repo_impl.dart'
    as _i113;
import '../../features/return_products/domain/repo/return_product_repo.dart'
    as _i524;
import '../../features/return_products/domain/usecases/return_product_use_cases.dart'
    as _i492;
import '../../features/return_products/present/bloc/return_products_bloc.dart'
    as _i600;
import '../../features/transactions_details/data/datasources/transactions_details_api.dart'
    as _i106;
import '../../features/transactions_details/data/repo_impl/transactions_details_repo_impl.dart'
    as _i483;
import '../../features/transactions_details/domain/repo/transactions_details_repo.dart'
    as _i525;
import '../../features/transactions_details/domain/usecases/transactions_details_use_cases.dart'
    as _i179;
import '../../features/transactions_details/present/bloc/transactions_details_bloc.dart'
    as _i529;
import '../networking/network_info.dart' as _i303;
import 'api_module.dart' as _i804;
import 'dio/api_module.dart' as _i158;
import 'dio/dio_module.dart' as _i374;
import 'injection_module.dart' as _i212;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final injectionModule = _$InjectionModule();
  final apiModule = _$ApiModule();
  final dioModule = _$DioModule();
  await gh.factoryAsync<_i460.SharedPreferencesAsync>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i804.LoggingInterceptor>(() => _i804.LoggingInterceptor());
  gh.singleton<_i557.Env>(() => apiModule.config);
  gh.singleton<_i158.LoggingInterceptor>(() => _i158.LoggingInterceptor());
  gh.singleton<_i161.InternetConnection>(
    () => injectionModule.connectionChecker,
  );
  gh.singleton<_i558.FlutterSecureStorage>(() => injectionModule.secureStorage);
  gh.lazySingleton<_i804.TokenStorage>(() => _i804.TokenStorage());
  gh.lazySingleton<_i158.TokenStorage>(() => _i158.TokenStorage());
  gh.singleton<_i158.AuthInterceptor>(
    () => _i158.AuthInterceptor(gh<_i158.TokenStorage>()),
  );
  gh.singleton<_i303.NetworkInfo>(
    () => _i303.NetworkInfoImpl(
      connectionChecker: gh<_i161.InternetConnection>(),
    ),
  );
  gh.singleton<_i804.AuthInterceptor>(
    () => _i804.AuthInterceptor(gh<_i804.TokenStorage>()),
  );
  gh.singleton<_i361.Dio>(
    () => dioModule.dio(
      gh<_i158.AuthInterceptor>(),
      gh<_i158.LoggingInterceptor>(),
    ),
  );
  gh.singleton<_i836.CustomersApi>(() => _i836.CustomersApi(gh<_i361.Dio>()));
  gh.singleton<_i903.DailyCollectionsApi>(
    () => _i903.DailyCollectionsApi(gh<_i361.Dio>()),
  );
  gh.singleton<_i682.DailyOrdersApi>(
    () => _i682.DailyOrdersApi(gh<_i361.Dio>()),
  );
  gh.singleton<_i116.DailyTransactionsApi>(
    () => _i116.DailyTransactionsApi(gh<_i361.Dio>()),
  );
  gh.singleton<_i38.ProductsApi>(() => _i38.ProductsApi(gh<_i361.Dio>()));
  gh.singleton<_i146.ReturnProductsApi>(
    () => _i146.ReturnProductsApi(gh<_i361.Dio>()),
  );
  gh.singleton<_i106.TransactionsDetailsApi>(
    () => _i106.TransactionsDetailsApi(gh<_i361.Dio>()),
  );
  gh.singleton<_i525.TransactionsDetailsRepo>(
    () => _i483.TransactionsDetailsRepoImpl(gh<_i106.TransactionsDetailsApi>()),
  );
  gh.singleton<_i1055.CustomersRepo>(
    () => _i16.CustomersRepoImpl(gh<_i836.CustomersApi>()),
  );
  gh.singleton<_i79.DailyTransactionsRepo>(
    () => _i508.DailyTransactionsRepoImpl(gh<_i116.DailyTransactionsApi>()),
  );
  gh.singleton<_i353.CustomersUseCases>(
    () => _i353.CustomersUseCases(gh<_i1055.CustomersRepo>()),
  );
  gh.singleton<_i114.DailyCollectionsRepo>(
    () => _i411.DailyCollectionsRepoImpl(gh<_i903.DailyCollectionsApi>()),
  );
  gh.singleton<_i274.DailyTransactionsUseCases>(
    () => _i274.DailyTransactionsUseCases(gh<_i79.DailyTransactionsRepo>()),
  );
  gh.singleton<_i179.TransactionsDetailsUseCases>(
    () =>
        _i179.TransactionsDetailsUseCases(gh<_i525.TransactionsDetailsRepo>()),
  );
  gh.singleton<_i550.DailyOrdersRepo>(
    () => _i668.DailyOrdersRepoImpl(gh<_i682.DailyOrdersApi>()),
  );
  gh.singleton<_i311.ProductsRepo>(
    () => _i249.ProductsRepoImpl(gh<_i38.ProductsApi>()),
  );
  gh.singleton<_i3.CustomersBloc>(
    () => _i3.CustomersBloc(gh<_i353.CustomersUseCases>()),
  );
  gh.singleton<_i703.ProductsUseCases>(
    () => _i703.ProductsUseCases(gh<_i311.ProductsRepo>()),
  );
  gh.singleton<_i275.ProductsBloc>(
    () => _i275.ProductsBloc(
      gh<_i703.ProductsUseCases>(),
      gh<_i3.CustomersBloc>(),
    ),
  );
  gh.singleton<_i524.ReturnProductsRepo>(
    () => _i113.ReturnProductsRepoImpl(gh<_i146.ReturnProductsApi>()),
  );
  gh.singleton<_i529.TransactionsDetailsBloc>(
    () => _i529.TransactionsDetailsBloc(
      gh<_i179.TransactionsDetailsUseCases>(),
      gh<_i3.CustomersBloc>(),
    ),
  );
  gh.singleton<_i14.DailyTransactionsBloc>(
    () => _i14.DailyTransactionsBloc(
      gh<_i274.DailyTransactionsUseCases>(),
      gh<_i3.CustomersBloc>(),
    ),
  );
  gh.singleton<_i243.DailyCollectionsUseCases>(
    () => _i243.DailyCollectionsUseCases(gh<_i114.DailyCollectionsRepo>()),
  );
  gh.singleton<_i394.DailyOrdersUseCases>(
    () => _i394.DailyOrdersUseCases(gh<_i550.DailyOrdersRepo>()),
  );
  gh.singleton<_i353.DailyCollectionsBloc>(
    () => _i353.DailyCollectionsBloc(
      gh<_i243.DailyCollectionsUseCases>(),
      gh<_i3.CustomersBloc>(),
    ),
  );
  gh.singleton<_i795.UpdateDailyCollectionsBloc>(
    () => _i795.UpdateDailyCollectionsBloc(
      gh<_i243.DailyCollectionsUseCases>(),
      gh<_i3.CustomersBloc>(),
    ),
  );
  gh.singleton<_i492.ReturnProductsUseCases>(
    () => _i492.ReturnProductsUseCases(gh<_i524.ReturnProductsRepo>()),
  );
  gh.singleton<_i601.DailyOrdersBloc>(
    () => _i601.DailyOrdersBloc(
      gh<_i394.DailyOrdersUseCases>(),
      gh<_i3.CustomersBloc>(),
    ),
  );
  gh.singleton<_i600.ReturnProductsBloc>(
    () => _i600.ReturnProductsBloc(
      gh<_i492.ReturnProductsUseCases>(),
      gh<_i3.CustomersBloc>(),
    ),
  );
  return getIt;
}

class _$InjectionModule extends _i212.InjectionModule {}

class _$ApiModule extends _i158.ApiModule {}

class _$DioModule extends _i374.DioModule {}
