import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:abujena_automation/features/shorebird/domain/entities/deployment_config.dart';
import 'package:abujena_automation/features/shorebird/domain/entities/deployment_result.dart';
import 'package:abujena_automation/features/shorebird/domain/entities/version_info.dart';
import 'package:abujena_automation/features/shorebird/domain/usecases/shorebird_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:abujena_automation/features/shorebird/domain/entities/version_info.dart';
part 'shorebird_bloc.freezed.dart';
part 'shorebird_event.dart';
part 'shorebird_state.dart';

@injectable
class ShorebirdBloc extends Bloc<ShorebirdEvent, ShorebirdState> {
  final ShorebirdUseCases _useCases;
  final DeploymentConfig _config;
  VersionInfo? _currentVersion;

  ShorebirdBloc({
    required ShorebirdUseCases useCases,
    required DeploymentConfig config,
  }) : _useCases = useCases,
       _config = config,
       super(const ShorebirdState.initial()) {
    on<ShorebirdEventStarted>(_onStarted);
    on<ShorebirdEventCheckVersion>(_onCheckVersion);
    on<ShorebirdEventDeployPatch>(_onDeployPatch);
    on<ShorebirdEventDeployRelease>(_onDeployRelease);
  }

  Future<void> _onStarted(
    ShorebirdEventStarted event,
    Emitter<ShorebirdState> emit,
  ) async {
    add(const ShorebirdEvent.checkVersion());
  }

  Future<void> _onCheckVersion(
    ShorebirdEventCheckVersion event,
    Emitter<ShorebirdState> emit,
  ) async {
    emit(const ShorebirdState.checkingVersion());

    try {
      // Check if patch is possible (requires existing release)
      final releases = await _useCases.getExistingReleases(_config);

      if (releases.isEmpty) {
        // No existing release, need to create one
        // Set a default version for new release
        _currentVersion = const VersionInfo(
          fullVersion: '1.0.0+1',
          cleanVersion: '1.0.0',
          major: 1,
          minor: 0,
          patch: 0,
          buildNumber: 1,
        );
        emit(const ShorebirdState.releaseReady());
        return;
      }

      // Check if current version already exists
      // In real implementation, we'd read from pubspec.yaml
      _currentVersion = const VersionInfo(
        fullVersion: '1.0.0+1',
        cleanVersion: '1.0.0',
        major: 1,
        minor: 0,
        patch: 0,
        buildNumber: 1,
      );

      final versionExists = await _useCases.versionExists(
        _config,
        _currentVersion!,
      );

      if (versionExists) {
        // Version exists, try to patch
        emit(const ShorebirdState.patchReady());
      } else {
        // New version, create release
        emit(const ShorebirdState.releaseReady());
      }
    } catch (e) {
      emit(ShorebirdState.failure(error: 'Version check failed: $e'));
    }
  }

  Future<void> _onDeployPatch(
    ShorebirdEventDeployPatch event,
    Emitter<ShorebirdState> emit,
  ) async {
    emit(const ShorebirdState.deployingPatch());

    final result = await _useCases.deployPatch(_config);

    result.when(
      patch: () => emit(const ShorebirdState.patchSuccess()),
      release: (version) => emit(
        ShorebirdState.releaseSuccess(
          version: VersionInfo.fromPubspecVersion(version),
        ),
      ),
      failure: (reason) => emit(ShorebirdState.failure(error: reason)),
    );
  }

  Future<void> _onDeployRelease(
    ShorebirdEventDeployRelease event,
    Emitter<ShorebirdState> emit,
  ) async {
    emit(const ShorebirdState.deployingRelease());

    if (_currentVersion == null) {
      emit(
        const ShorebirdState.failure(error: 'No version information available'),
      );
      return;
    }

    final result = await _useCases.deployRelease(_config, _currentVersion!);

    result.when(
      patch: () => emit(const ShorebirdState.patchSuccess()),
      release: (version) => emit(
        ShorebirdState.releaseSuccess(
          version: VersionInfo.fromPubspecVersion(version),
        ),
      ),
      failure: (reason) => emit(ShorebirdState.failure(error: reason)),
    );
  }
}
