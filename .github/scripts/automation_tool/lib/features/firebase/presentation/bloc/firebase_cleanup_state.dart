import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_cleanup_state.freezed.dart';

/// States for Firebase Cleanup BLoC
@freezed
class FirebaseCleanupState with _$FirebaseCleanupState {
  const factory FirebaseCleanupState.initial() = FirebaseCleanupStateInitial;
  const factory FirebaseCleanupState.loading() = FirebaseCleanupStateLoading;
  const factory FirebaseCleanupState.success({
    required int deletedCount,
    required int remainingCount,
  }) = FirebaseCleanupStateSuccess;
  const factory FirebaseCleanupState.failure({
    required String error,
  }) = FirebaseCleanupStateFailure;
}
