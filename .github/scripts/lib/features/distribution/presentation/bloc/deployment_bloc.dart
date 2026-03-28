import 'dart:async';
import '../../domain/entities/deployment_result.dart';
import '../../domain/usecases/deployment_usecases.dart';
import 'deployment_event.dart';
import 'deployment_state.dart';

class DeploymentBloc {
  final DeploymentUseCases _deploymentUseCases;

  DeploymentBloc(this._deploymentUseCases);

  final _stateController = StreamController<DeploymentState>.broadcast();
  Stream<DeploymentState> get state => _stateController.stream;

  void add(DeploymentEvent event) {
    event.map(started: (_) => _onStarted());
  }

  Future<void> _onStarted() async {
    _stateController.add(const DeploymentState.loading());

    try {
      final result = await _deploymentUseCases.deploy();

      result.when(
        patch: () => _stateController.add(const DeploymentState.patchSuccess()),
        release: (version) =>
            _stateController.add(DeploymentState.releaseSuccess(version)),
        failure: (reason) =>
            _stateController.add(DeploymentState.failure(reason)),
      );
    } catch (e) {
      _stateController.add(DeploymentState.failure(e.toString()));
    }
  }

  void dispose() {
    _stateController.close();
  }
}
