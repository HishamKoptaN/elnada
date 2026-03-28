import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:abujena_automation/features/shorebird/domain/entities/version_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:abujena_automation/features/shorebird/domain/entities/version_info.dart';

part 'deploy_bloc.freezed.dart';
part 'deploy_event.dart';
part 'deploy_state.dart';

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
    add(const DeployEvent.startBuild());
  }
  Future<void> _onStartBuild(
    DeployEventStartBuild event,
    Emitter<DeployState> emit,
  ) async {
    emit(const DeployState.building());
  }

  Future<void> _onStartCleanup(
    DeployEventStartCleanup event,
    Emitter<DeployState> emit,
  ) async {
    emit(const DeployState.cleaningFirebase());
  }
  void reportBuildSuccess(String outputPath) {
    emit(DeployState.buildSuccess(outputPath: outputPath));
    emit(const DeployState.checkingVersion());
  }
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
