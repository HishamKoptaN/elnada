part of 'shorebird_bloc.dart';

@freezed
class ShorebirdEvent with _$ShorebirdEvent {
  const factory ShorebirdEvent.started() = ShorebirdEventStarted;
  const factory ShorebirdEvent.checkVersion() = ShorebirdEventCheckVersion;
  const factory ShorebirdEvent.deployPatch() = ShorebirdEventDeployPatch;
  const factory ShorebirdEvent.deployRelease() = ShorebirdEventDeployRelease;
}
