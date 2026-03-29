// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'core/config_module.dart' as _i194;
import 'core/dio_module.dart' as _i479;
import 'features/build_engine/build_bloc.dart' as _i304;
import 'features/build_engine/build_engine.dart' as _i883;
import 'features/deploy/deploy_bloc.dart' as _i534;
import 'features/firebase/data/datasources/firebase_api_service.dart' as _i1007;
import 'features/firebase/data/datasources/firebase_local_datasource.dart'
    as _i475;
import 'features/firebase/data/repos/firebase_repo.dart' as _i427;
import 'features/firebase/domain/usecases/firebase_usecases.dart' as _i418;
import 'features/firebase/present/bloc/firebase_cleanup_bloc.dart' as _i338;
import 'features/shorebird/data/datasources/shorebird_api_service.dart'
    as _i250;
import 'features/shorebird/data/datasources/shorebird_local_datasource.dart'
    as _i44;
import 'features/shorebird/data/repositories/shorebird_repository_impl.dart'
    as _i166;
import 'features/shorebird/domain/entities/deployment_config.dart' as _i494;
import 'features/shorebird/domain/repos/shorebird_repo.dart' as _i112;
import 'features/shorebird/domain/usecases/shorebird_usecases.dart' as _i524;
import 'features/shorebird/present/bloc/shorebird_bloc.dart' as _i1063;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    final configModule = _$ConfigModule();
    gh.singleton<_i534.DeployBloc>(() => _i534.DeployBloc());
    gh.singleton<_i475.FirebaseLocalDataSource>(
        () => _i475.FirebaseLocalDataSource());
    gh.singleton<_i44.ShorebirdLocalDataSource>(
        () => _i44.ShorebirdLocalDataSource());
    gh.singleton<_i361.Dio>(() => dioModule.dio);
    gh.singleton<String>(
      () => configModule.projectRoot,
      instanceName: 'projectRoot',
    );
    gh.singleton<String>(
      () => configModule.flavor,
      instanceName: 'flavor',
    );
    gh.singleton<String>(
      () => configModule.firebaseToken,
      instanceName: 'firebaseToken',
    );
    gh.singleton<String>(
      () => configModule.githubRepository,
      instanceName: 'githubRepository',
    );
    gh.singleton<String>(
      () => configModule.shorebirdToken,
      instanceName: 'shorebirdToken',
    );
    gh.singleton<_i1007.FirebaseApiService>(
        () => _i1007.FirebaseApiService(gh<_i361.Dio>()));
    gh.singleton<_i250.ShorebirdApiService>(
        () => _i250.ShorebirdApiService(gh<_i361.Dio>()));
    gh.singleton<String>(
      () => configModule.appId,
      instanceName: 'appId',
    );
    gh.singleton<_i112.ShorebirdRepo>(() => _i166.ShorebirdRepoImpl(
          localDataSource: gh<_i44.ShorebirdLocalDataSource>(),
          apiService: gh<_i250.ShorebirdApiService>(),
        ));
    gh.singleton<_i524.ShorebirdUseCases>(
        () => _i524.ShorebirdUseCases(gh<_i112.ShorebirdRepo>()));
    gh.singleton<_i883.BuildEngine>(
        () => _i883.BuildEngine(gh<String>(instanceName: 'projectRoot')));
    gh.singleton<_i427.FirebaseRepo>(() => _i427.FirebaseRepo(
          apiService: gh<_i1007.FirebaseApiService>(),
          localDataSource: gh<_i475.FirebaseLocalDataSource>(),
        ));
    gh.singleton<_i494.DeploymentConfig>(() => configModule.getDeploymentConfig(
          gh<String>(instanceName: 'flavor'),
          gh<String>(instanceName: 'shorebirdToken'),
          gh<String>(instanceName: 'firebaseToken'),
          gh<String>(instanceName: 'githubRepository'),
          gh<String>(instanceName: 'appId'),
        ));
    gh.singleton<_i418.FirebaseUseCases>(
        () => _i418.FirebaseUseCases(gh<_i427.FirebaseRepo>()));
    gh.factory<_i338.FirebaseCleanupBloc>(() => _i338.FirebaseCleanupBloc(
          useCases: gh<_i418.FirebaseUseCases>(),
          appId: gh<String>(instanceName: 'appId'),
          token: gh<String>(instanceName: 'shorebirdToken'),
        ));
    gh.singleton<_i304.BuildBloc>(
        () => _i304.BuildBloc(buildEngine: gh<_i883.BuildEngine>()));
    gh.factory<_i1063.ShorebirdBloc>(() => _i1063.ShorebirdBloc(
          useCases: gh<_i524.ShorebirdUseCases>(),
          config: gh<_i494.DeploymentConfig>(),
        ));
    return this;
  }
}

class _$DioModule extends _i479.DioModule {}

class _$ConfigModule extends _i194.ConfigModule {}
