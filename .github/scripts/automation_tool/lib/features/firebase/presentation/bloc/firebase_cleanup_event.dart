import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_cleanup_event.freezed.dart';

/// Events for Firebase Cleanup BLoC
@freezed
class FirebaseCleanupEvent with _$FirebaseCleanupEvent {
  const factory FirebaseCleanupEvent.started() = FirebaseCleanupEventStarted;
  const factory FirebaseCleanupEvent.clean() = FirebaseCleanupEventClean;
}
