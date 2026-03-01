part of 'daily_collections_bloc.dart';

@freezed
abstract class DailyCollectionsEvent with _$DailyCollectionsEvent {
  const factory DailyCollectionsEvent.dataChanged({
    required CreateDailyCollectionReqEntity createDailyCollectionReq,
  }) = _DataChanged;
  const factory DailyCollectionsEvent.create() = _Create;
}
