import 'package:abujena_automation/injection.dart';
import 'package:abujena_automation/features/build_engine/build_bloc.dart';
import 'package:abujena_automation/features/deploy/deploy_bloc.dart';
import 'package:abujena_automation/features/shorebird/present/bloc/shorebird_bloc.dart';
import 'package:abujena_automation/features/firebase/present/bloc/firebase_cleanup_bloc.dart';
import 'deployment_logger.dart';
import 'deployment_state_handler.dart';

/// Orchestrates the full deployment flow
class DeploymentRunner {
  final DeployBloc _deployBloc = getIt<DeployBloc>();
  final BuildBloc _buildBloc = getIt<BuildBloc>();
  final ShorebirdBloc _shorebirdBloc = getIt<ShorebirdBloc>();
  final CleanupBloc _cleanupBloc = getIt<FirebaseCleanupBloc>();

  late final DeploymentStateHandler _handler;

  DeploymentRunner() {
    _handler = DeploymentStateHandler(
      buildBloc: _buildBloc,
      shorebirdBloc: _shorebirdBloc,
      cleanupBloc: _cleanupBloc,
    );
  }

  Future<void> run() async {
    DeploymentLogger().setup();

    try {
      await for (final state in _deployBloc.stream) {
        final shouldContinue = await _handler.handle(state);
        if (!shouldContinue) break;
      }
    } finally {
      _closeBlocs();
    }
  }

  void _closeBlocs() {
    _deployBloc.close();
    _buildBloc.close();
    _shorebirdBloc.close();
    _cleanupBloc.close();
  }
}

typedef CleanupBloc = FirebaseCleanupBloc;
