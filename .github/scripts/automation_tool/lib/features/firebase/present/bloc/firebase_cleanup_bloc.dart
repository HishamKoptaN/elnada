import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/firebase_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'firebase_cleanup_bloc.freezed.dart';
part 'firebase_cleanup_event.dart';
part 'firebase_cleanup_state.dart';

@injectable
class FirebaseCleanupBloc
    extends Bloc<FirebaseCleanupEvent, FirebaseCleanupState> {
  final FirebaseUseCases _useCases;
  final String _appId;
  final String _token;

  FirebaseCleanupBloc({
    required FirebaseUseCases useCases,
    required String appId,
    required String token,
  }) : _useCases = useCases,
       _appId = appId,
       _token = token,
       super(const FirebaseCleanupState.initial()) {
    on<FirebaseCleanupEventStarted>(_onStarted);
    on<FirebaseCleanupEventClean>(_onClean);
  }

  Future<void> _onStarted(
    FirebaseCleanupEventStarted event,
    Emitter<FirebaseCleanupState> emit,
  ) async {
    add(const FirebaseCleanupEvent.clean());
  }

  Future<void> _onClean(
    FirebaseCleanupEventClean event,
    Emitter<FirebaseCleanupState> emit,
  ) async {
    emit(const FirebaseCleanupState.loading());

    try {
      // Get initial count
      final initialCount = await _useCases.getReleaseCount(_appId, _token);

      // Clean old releases
      await _useCases.cleanOldReleases(_appId, _token, keepLatest: 3);

      // Get final count
      final finalCount = await _useCases.getReleaseCount(_appId, _token);
      final deletedCount = initialCount - finalCount;

      emit(
        FirebaseCleanupState.success(
          deletedCount: deletedCount,
          remainingCount: finalCount,
        ),
      );
    } catch (e) {
      emit(FirebaseCleanupState.failure(error: e.toString()));
    }
  }
}
