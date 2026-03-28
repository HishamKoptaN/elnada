import 'package:bloc/bloc.dart';
import 'build_engine.dart';
import 'build_event.dart';
import 'build_state.dart';

/// BLoC for build operations
class BuildBloc extends Bloc<BuildEvent, BuildState> {
  final BuildEngine _buildEngine;

  BuildBloc({required BuildEngine buildEngine})
    : _buildEngine = buildEngine,
      super(const BuildState.initial()) {
    on<BuildEventStarted>(_onStarted);
    on<BuildEventBuildAndroid>(_onBuildAndroid);
    on<BuildEventBuildWindows>(_onBuildWindows);
  }

  Future<void> _onStarted(
    BuildEventStarted event,
    Emitter<BuildState> emit,
  ) async {
    // Default: build Android
    add(const BuildEvent.buildAndroid());
  }

  Future<void> _onBuildAndroid(
    BuildEventBuildAndroid event,
    Emitter<BuildState> emit,
  ) async {
    emit(BuildState.building(platform: 'Android'));

    try {
      final apkPath = await _buildEngine.buildAndroid(
        flavor: event.flavor ?? 'production',
      );
      emit(BuildState.success(platform: 'Android', outputPath: apkPath));
    } catch (e) {
      emit(BuildState.failure(platform: 'Android', error: e.toString()));
    }
  }

  Future<void> _onBuildWindows(
    BuildEventBuildWindows event,
    Emitter<BuildState> emit,
  ) async {
    emit(BuildState.building(platform: 'Windows'));

    try {
      final exePath = await _buildEngine.buildWindows();
      emit(BuildState.success(platform: 'Windows', outputPath: exePath));
    } catch (e) {
      emit(BuildState.failure(platform: 'Windows', error: e.toString()));
    }
  }
}
