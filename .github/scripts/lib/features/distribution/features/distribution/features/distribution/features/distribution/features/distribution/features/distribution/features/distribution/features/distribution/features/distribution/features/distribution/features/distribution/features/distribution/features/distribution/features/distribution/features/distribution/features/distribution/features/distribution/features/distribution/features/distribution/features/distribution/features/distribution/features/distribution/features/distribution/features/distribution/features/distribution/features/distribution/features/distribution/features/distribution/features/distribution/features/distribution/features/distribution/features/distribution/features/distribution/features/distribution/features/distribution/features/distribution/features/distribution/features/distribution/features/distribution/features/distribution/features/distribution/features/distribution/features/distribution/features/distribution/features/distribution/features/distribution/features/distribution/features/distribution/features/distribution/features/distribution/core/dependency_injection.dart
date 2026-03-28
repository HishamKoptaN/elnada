import '../data/repositories/appcast_repository_impl.dart';
import '../data/repositories/config_repository_impl.dart';
import '../data/repositories/deployment_repository_impl.dart';
import '../domain/repositories/appcast_repository.dart';
import '../domain/repositories/config_repository.dart';
import '../domain/repositories/deployment_repository.dart';
import '../domain/usecases/deployment_usecases.dart';
import '../presentation/bloc/deployment_bloc.dart';

class DependencyInjection {
  static late ConfigRepository _configRepository;
  static late DeploymentRepository _deploymentRepository;
  static late AppcastRepository _appcastRepository;

  static late DeploymentUseCases _deploymentUseCases;

  static late DeploymentBloc _deploymentBloc;

  static void init() {
    // Repositories
    _configRepository = ConfigRepositoryImpl();
    _deploymentRepository = DeploymentRepositoryImpl();
    _appcastRepository = AppcastRepositoryImpl();

    // Use Cases
    _deploymentUseCases = DeploymentUseCases(
      _configRepository,
      _deploymentRepository,
      _appcastRepository,
    );

    // Bloc
    _deploymentBloc = DeploymentBloc(_deploymentUseCases);
  }

  static DeploymentBloc get deploymentBloc => _deploymentBloc;
}
