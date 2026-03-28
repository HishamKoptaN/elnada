import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:abujena_automation/features/shorebird/domain/entities/version_info.dart';
import 'deploy_event.dart';
import 'deploy_state.dart';

/// Unified orchestrator BLoC that manages the entire deployment flow
@singleton
class DeployBloc extends Bloc<DeployEvent, DeployState> {
  DeployBloc() : super(const DeployState.initial()) {
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

  /// Report build success from BuildBloc
  void reportBuildSuccess(String outputPath) {
    emit(DeployState.buildSuccess(outputPath: outputPath));
    emit(const DeployState.checkingVersion());
  }

  /// Report patch success from ShorebirdBloc
  void reportPatchSuccess() {
    emit(const DeployState.patchSuccess());
    emit(const DeployState.completed());
  }

  /// Report release success from ShorebirdBloc
  void reportReleaseSuccess(VersionInfo version) {
    emit(DeployState.releaseSuccess(version: version, isNewRelease: true));

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
