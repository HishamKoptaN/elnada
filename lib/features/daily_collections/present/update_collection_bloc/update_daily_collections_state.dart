part of 'update_daily_collections_bloc.dart';

@freezed
abstract class UpdateDailyCollectionsState with _$UpdateDailyCollectionsState {
  const factory UpdateDailyCollectionsState.initial() = _Initial;
  const factory UpdateDailyCollectionsState.loading() = _Loading;
  const factory UpdateDailyCollectionsState.loaded({
    required UpdateDailyCollectionReqEntity updateDailyCollectionReq,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory UpdateDailyCollectionsState.success() = _Success;
  const factory UpdateDailyCollectionsState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
