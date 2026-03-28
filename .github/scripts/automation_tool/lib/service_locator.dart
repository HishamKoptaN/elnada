import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

// Core
import 'core/dio_client.dart';
import 'core/config.dart';

// Shorebird Feature
import 'features/shorebird/data/datasources/shorebird_api_service.dart';
import 'features/shorebird/data/datasources/shorebird_local_datasource.dart';
import 'features/shorebird/data/repositories/shorebird_repository_impl.dart';
import 'features/shorebird/domain/repositories/shorebird_repository.dart';
import 'features/shorebird/domain/usecases/shorebird_usecases.dart';
import 'features/shorebird/presentation/bloc/shorebird_bloc.dart';

// Firebase Feature
import 'features/firebase/data/datasources/firebase_api_service.dart';
import 'features/firebase/data/datasources/firebase_local_datasource.dart';
import 'features/firebase/data/repositories/firebase_repository.dart';
import 'features/firebase/domain/usecases/firebase_usecases.dart';
import 'features/firebase/presentation/bloc/firebase_cleanup_bloc.dart';

// Build Engine Feature
import 'features/build_engine/build_engine.dart';
import 'features/build_engine/build_bloc.dart';

// Deploy Orchestrator
import 'features/deploy/deploy_bloc.dart';

/// Global service locator instance
final GetIt locator = GetIt.instance;

/// Setup dependency injection
void setupLocator() {
  // Core
  locator.registerLazySingleton(() => DioClient.create());
  locator.registerLazySingleton(() => AutomationConfig.fromEnvironment());

  // Shorebird Feature
  locator.registerLazySingleton(() => ShorebirdLocalDataSource());
  locator.registerLazySingleton<ShorebirdApiService>(
    () => ShorebirdApiService(
      locator<Dio>(),
      baseUrl: 'https://api.shorebird.dev/v1',
    ),
  );
  locator.registerLazySingleton<ShorebirdRepository>(
    () => ShorebirdRepositoryImpl(
      localDataSource: locator<ShorebirdLocalDataSource>(),
      apiService: locator<ShorebirdApiService>(),
    ),
  );
  locator.registerLazySingleton(
    () => ShorebirdUseCases(locator<ShorebirdRepository>()),
  );

  // Firebase Feature
  locator.registerLazySingleton(() => FirebaseLocalDataSource());
  locator.registerLazySingleton<FirebaseApiService>(
    () => FirebaseApiService(
      locator<Dio>(),
      baseUrl: 'https://firebaseappdistribution.googleapis.com',
    ),
  );
  locator.registerLazySingleton(
    () => FirebaseRepository(
      localDataSource: locator<FirebaseLocalDataSource>(),
      apiService: locator<FirebaseApiService>(),
    ),
  );
  locator.registerLazySingleton(
    () => FirebaseUseCases(locator<FirebaseRepository>()),
  );

  // Build Engine
  locator.registerLazySingleton(() => BuildEngine());
  locator.registerFactory(() => BuildBloc(buildEngine: locator<BuildEngine>()));

  // BLoCs
  locator.registerFactory(() {
    final config = locator<AutomationConfig>();
    return ShorebirdBloc(
      useCases: locator<ShorebirdUseCases>(),
      config: DeploymentConfig(
        flavor: config.flavor,
        shorebirdToken: config.shorebirdToken,
        firebaseToken: config.firebaseToken,
        githubRepository: config.githubRepository,
      ),
    );
  });

  locator.registerFactory(() {
    final config = locator<AutomationConfig>();
    return FirebaseCleanupBloc(
      useCases: locator<FirebaseUseCases>(),
      appId: config.appId,
      token: config.firebaseToken ?? '',
    );
  });

  locator.registerFactory(() {
    final config = locator<AutomationConfig>();
    return DeployBloc(
      config: DeploymentConfig(
        flavor: config.flavor,
        shorebirdToken: config.shorebirdToken,
        firebaseToken: config.firebaseToken,
        githubRepository: config.githubRepository,
      ),
    );
  });
}
