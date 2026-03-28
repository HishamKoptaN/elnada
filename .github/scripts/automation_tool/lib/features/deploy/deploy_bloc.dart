import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../shorebird/domain/entities/deployment_config.dart';
import '../shorebird/domain/entities/version_info.dart';

part 'deploy_event.freezed.dart';
part 'deploy_state.freezed.dart';

/// Events for Deployment orchestrator BLoC
@freezed
class DeployEvent with _$DeployEvent {
  const factory DeployEvent.startDeployment() = DeployEventStartDeployment;
  const factory DeployEvent.startCleanup() = DeployEventStartCleanup;
  const factory DeployEvent.startBuild() = DeployEventStartBuild;
}

/// States for Deployment orchestrator BLoC
@freezed
class DeployState with _$DeployState {
  const factory DeployState.initial() = DeployStateInitial;
  const factory DeployState.loading({required String message}) = DeployStateLoading;
  const factory DeployState.building() = DeployStateBuilding;
  const factory DeployState.buildSuccess({required String outputPath}) = DeployStateBuildSuccess;
  const factory DeployState.checkingVersion() = DeployStateCheckingVersion;
  const factory DeployState.deployingPatch() = DeployStateDeployingPatch;
  const factory DeployState.patchSuccess() = DeployStatePatchSuccess;
  const factory DeployState.deployingRelease() = DeployStateDeployingRelease;
  const factory DeployState.releaseSuccess({
    required VersionInfo version,
    required bool isNewRelease,
  }) = DeployStateReleaseSuccess;
  const factory DeployState.cleaningFirebase() = DeployStateCleaningFirebase;
  const factory DeployState.cleanupSuccess({
    required int deletedCount,
  }) = DeployStateCleanupSuccess;
  const factory DeployState.failure({
    required String step,
    required String error,
  }) = DeployStateFailure;
  const factory DeployState.completed() = DeployStateCompleted;
}

/// Unified orchestrator BLoC that manages the entire deployment flow
class DeployBloc extends Bloc<DeployEvent, DeployState> {
  final DeploymentConfig _config;
  
  DeployBloc({
    required DeploymentConfig config,
  })  : _config = config,
        super(const DeployState.initial()) {
    on<DeployEventStartDeployment>(_onStartDeployment);
    on<DeployEventStartCleanup>(_onStartCleanup);
    on<DeployEventStartBuild>(_onStartBuild);
  }

  Future<void> _onStartDeployment(
    DeployEventStartDeployment event,
    Emitter<DeployState> emit,
  ) async {
    emit(const DeployState.loading(message: 'Starting deployment...'));
    
    // Step 1: Build
    add(const DeployEvent.startBuild());
  }

  Future<void> _onStartBuild(
    DeployEventStartBuild event,
    Emitter<DeployState> emit,
  ) async {
    emit(const DeployState.building());
    
    // Build is handled by separate BuildBloc
    // This state signals the main.dart to trigger build
    emit(const DeployState.buildSuccess(outputPath: ''));
    
    // After build, check version and deploy
    emit(const DeployState.checkingVersion());
    
    // Shorebird deployment is handled by ShorebirdBloc
    // This orchestrator manages the flow
  }

  Future<void> _onStartCleanup(
    DeployEventStartCleanup event,
    Emitter<DeployState> emit,
  ) async {
    emit(const DeployState.cleaningFirebase());
    
    // Cleanup is handled by FirebaseCleanupBloc
    // This state signals the main.dart to trigger cleanup
  }

  /// Report patch success from ShorebirdBloc
  void reportPatchSuccess() {
    emit(const DeployState.patchSuccess());
    emit(const DeployState.completed());
  }

  /// Report release success from ShorebirdBloc
  void reportReleaseSuccess(VersionInfo version) {
    emit(DeployState.releaseSuccess(
      version: version,
      isNewRelease: true,
    ));
    
    // After release, trigger cleanup
    add(const DeployEvent.startCleanup());
  }

  /// Report cleanup success from FirebaseCleanupBloc
  void reportCleanupSuccess(int deletedCount) {
    emit(DeployState.cleanupSuccess(deletedCount: deletedCount));
    emit(const DeployState.completed());
  }

  /// Report failure from any step
  void reportFailure(String step, String error) {
    emit(DeployState.failure(step: step, error: error));
  }
}
