part of 'shorebird_bloc.dart';

@freezed
class ShorebirdState with _$ShorebirdState {
  const factory ShorebirdState.initial() = ShorebirdStateInitial;
  const factory ShorebirdState.checkingVersion() =
      ShorebirdStateCheckingVersion;
  const factory ShorebirdState.patchReady() = ShorebirdStatePatchReady;
  const factory ShorebirdState.releaseReady() = ShorebirdStateReleaseReady;
  const factory ShorebirdState.deployingPatch() = ShorebirdStateDeployingPatch;
  const factory ShorebirdState.patchSuccess() = ShorebirdStatePatchSuccess;
  const factory ShorebirdState.deployingRelease() =
      ShorebirdStateDeployingRelease;
  const factory ShorebirdState.releaseSuccess({required VersionInfo version}) =
      ShorebirdStateReleaseSuccess;
  const factory ShorebirdState.failure({required String error}) =
      ShorebirdStateFailure;
}
