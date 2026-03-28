import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'build_engine.dart';

part 'build_event.freezed.dart';
part 'build_state.freezed.dart';

/// Events for Build BLoC
@freezed
class BuildEvent with _$BuildEvent {
  const factory BuildEvent.started() = BuildEventStarted;
  const factory BuildEvent.buildAndroid({String? flavor}) =
      BuildEventBuildAndroid;
  const factory BuildEvent.buildWindows() = BuildEventBuildWindows;
}

/// States for Build BLoC
@freezed
class BuildState with _$BuildState {
  const factory BuildState.initial() = BuildStateInitial;
  const factory BuildState.building({required String platform}) =
      BuildStateBuilding;
  const factory BuildState.success({
    required String platform,
    required String outputPath,
  }) = BuildStateSuccess;
  const factory BuildState.failure({
    required String platform,
    required String error,
  }) = BuildStateFailure;
}

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
