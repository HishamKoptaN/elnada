import 'dart:async';
import 'package:bloc/bloc.dart';
import '../shorebird/domain/entities/version_info.dart';

/// Events for Deployment orchestrator BLoC
abstract class DeployEvent {
  const DeployEvent();
}

class DeployEventStartDeployment extends DeployEvent {
  const DeployEventStartDeployment();
}

class DeployEventStartCleanup extends DeployEvent {
  const DeployEventStartCleanup();
}

class DeployEventStartBuild extends DeployEvent {
  const DeployEventStartBuild();
}

/// States for Deployment orchestrator BLoC
abstract class DeployState {
  const DeployState();
}

class DeployStateInitial extends DeployState {
  const DeployStateInitial();
}

class DeployStateLoading extends DeployState {
  final String message;
  const DeployStateLoading({required this.message});
}

class DeployStateBuilding extends DeployState {
  const DeployStateBuilding();
}

class DeployStateBuildSuccess extends DeployState {
  final String outputPath;
  const DeployStateBuildSuccess({required this.outputPath});
}

class DeployStateCheckingVersion extends DeployState {
  const DeployStateCheckingVersion();
}

class DeployStateDeployingPatch extends DeployState {
  const DeployStateDeployingPatch();
}

class DeployStatePatchSuccess extends DeployState {
  const DeployStatePatchSuccess();
}

class DeployStateDeployingRelease extends DeployState {
  const DeployStateDeployingRelease();
}

class DeployStateReleaseSuccess extends DeployState {
  final VersionInfo version;
  final bool isNewRelease;
  const DeployStateReleaseSuccess({
    required this.version,
    required this.isNewRelease,
  });
}

class DeployStateCleaningFirebase extends DeployState {
  const DeployStateCleaningFirebase();
}

class DeployStateCleanupSuccess extends DeployState {
  final int deletedCount;
  const DeployStateCleanupSuccess({required this.deletedCount});
}

class DeployStateFailure extends DeployState {
  final String step;
  final String error;
  const DeployStateFailure({required this.step, required this.error});
}

class DeployStateCompleted extends DeployState {
  const DeployStateCompleted();
}

/// Unified orchestrator BLoC that manages the entire deployment flow
class DeployBloc extends Bloc<DeployEvent, DeployState> {
  DeployBloc() : super(const DeployStateInitial()) {
    on<DeployEventStartDeployment>(_onStartDeployment);
    on<DeployEventStartCleanup>(_onStartCleanup);
    on<DeployEventStartBuild>(_onStartBuild);
  }

  Future<void> _onStartDeployment(
    DeployEventStartDeployment event,
    Emitter<DeployState> emit,
  ) async {
    emit(const DeployStateLoading(message: 'Starting deployment...'));

    // Step 1: Build
    add(const DeployEventStartBuild());
  }

  Future<void> _onStartBuild(
    DeployEventStartBuild event,
    Emitter<DeployState> emit,
  ) async {
    emit(const DeployStateBuilding());

    // Build is handled by separate BuildBloc
    // This state signals the main.dart to trigger build
    emit(const DeployStateBuildSuccess(outputPath: ''));

    // After build, check version and deploy
    emit(const DeployStateCheckingVersion());

    // Shorebird deployment is handled by ShorebirdBloc
    // This orchestrator manages the flow
  }

  Future<void> _onStartCleanup(
    DeployEventStartCleanup event,
    Emitter<DeployState> emit,
  ) async {
    emit(const DeployStateCleaningFirebase());

    // Cleanup is handled by FirebaseCleanupBloc
    // This state signals the main.dart to trigger cleanup
  }

  /// Report patch success from ShorebirdBloc
  void reportPatchSuccess() {
    emit(const DeployStatePatchSuccess());
    emit(const DeployStateCompleted());
  }

  /// Report release success from ShorebirdBloc
  void reportReleaseSuccess(VersionInfo version) {
    emit(DeployStateReleaseSuccess(version: version, isNewRelease: true));

    // After release, trigger cleanup
    add(const DeployEventStartCleanup());
  }

  /// Report cleanup success from FirebaseCleanupBloc
  void reportCleanupSuccess(int deletedCount) {
    emit(DeployStateCleanupSuccess(deletedCount: deletedCount));
    emit(const DeployStateCompleted());
  }

  /// Report failure from any step
  void reportFailure(String step, String error) {
    emit(DeployStateFailure(step: step, error: error));
  }
}
