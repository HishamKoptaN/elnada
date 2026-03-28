
part of 'build_bloc.dart';

/// Events for Build BLoC
@freezed
class BuildEvent with _$BuildEvent {
  const factory BuildEvent.started() = BuildEventStarted;
  const factory BuildEvent.buildAndroid({String? flavor}) = BuildEventBuildAndroid;
  const factory BuildEvent.buildWindows() = BuildEventBuildWindows;
}
