part of 'daily_orders_bloc.dart';

@freezed
abstract class DailyOrdersState with _$DailyOrdersState {
  const factory DailyOrdersState.initial() = _Initial;
  const factory DailyOrdersState.loading() = _Loading;
  const factory DailyOrdersState.loaded({
    required CreateDailyOrderReqEntity createDailyOrderReq,
  }) = _Loaded;
  const factory DailyOrdersState.success() = _Success;
  const factory DailyOrdersState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
