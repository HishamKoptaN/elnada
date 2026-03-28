import 'package:freezed_annotation/freezed_annotation.dart';

part 'build_event.freezed.dart';

/// Events for Build BLoC
@freezed
class BuildEvent with _$BuildEvent {
  const factory BuildEvent.started() = BuildEventStarted;
  const factory BuildEvent.buildAndroid({String? flavor}) = BuildEventBuildAndroid;
  const factory BuildEvent.buildWindows() = BuildEventBuildWindows;
}
