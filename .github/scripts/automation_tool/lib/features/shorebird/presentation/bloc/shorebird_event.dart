import 'package:freezed_annotation/freezed_annotation.dart';

part 'shorebird_event.freezed.dart';

/// Events for Shorebird BLoC
@freezed
class ShorebirdEvent with _$ShorebirdEvent {
  const factory ShorebirdEvent.started() = ShorebirdEventStarted;
  const factory ShorebirdEvent.checkVersion() = ShorebirdEventCheckVersion;
  const factory ShorebirdEvent.deployPatch() = ShorebirdEventDeployPatch;
  const factory ShorebirdEvent.deployRelease() = ShorebirdEventDeployRelease;
}
