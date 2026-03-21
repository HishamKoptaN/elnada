part of 'daily_collections_bloc.dart';

@freezed
abstract class DailyCollectionsState with _$DailyCollectionsState {
  const factory DailyCollectionsState.initial() = _Initial;
  const factory DailyCollectionsState.loading() = _Loading;
  const factory DailyCollectionsState.loaded({
    required CreateDailyCollectionReqEntity createDailyCollectionReq,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory DailyCollectionsState.success() = _Success;
  const factory DailyCollectionsState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
