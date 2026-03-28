part of 'firebase_cleanup_bloc.dart';

@freezed
class FirebaseCleanupEvent with _$FirebaseCleanupEvent {
  const factory FirebaseCleanupEvent.started() = FirebaseCleanupEventStarted;
  const factory FirebaseCleanupEvent.clean() = FirebaseCleanupEventClean;
}
