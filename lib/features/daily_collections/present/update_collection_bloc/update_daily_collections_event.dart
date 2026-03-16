part of 'update_daily_collections_bloc.dart';

@freezed
abstract class UpdateDailyCollectionsEvent with _$UpdateDailyCollectionsEvent {
  const factory UpdateDailyCollectionsEvent.dataChanged({
    required UpdateDailyCollectionReqEntity updateDailyCollectionReq,
  }) = _DataChanged;
  const factory UpdateDailyCollectionsEvent.update() = _Update;
}
