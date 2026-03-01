part of 'daily_orders_bloc.dart';

@freezed
abstract class DailyOrdersEvent with _$DailyOrdersEvent {
  const factory DailyOrdersEvent.dataChanged({
    required CreateDailyOrderReqEntity createDailyOrderReq,
  }) = _DataChanged;
  const factory DailyOrdersEvent.create() = _Create;
}
