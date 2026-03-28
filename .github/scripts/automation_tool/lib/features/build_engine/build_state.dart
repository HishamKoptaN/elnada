import 'package:freezed_annotation/freezed_annotation.dart';

part 'build_state.freezed.dart';

/// States for Build BLoC
@freezed
class BuildState with _$BuildState {
  const factory BuildState.initial() = BuildStateInitial;
  const factory BuildState.building({required String platform}) = BuildStateBuilding;
  const factory BuildState.success({
    required String platform,
    required String outputPath,
  }) = BuildStateSuccess;
  const factory BuildState.failure({
    required String platform,
    required String error,
  }) = BuildStateFailure;
}
