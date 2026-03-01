part of 'daily_transactions_bloc.dart';

@freezed
abstract class DailyTransactionsEvent with _$DailyTransactionsEvent {
  const factory DailyTransactionsEvent.dataChanged({
    required CreateDailyTransactionReqEntity createDailyTransactionReq,
  }) = _DataChanged;
  const factory DailyTransactionsEvent.create() = _Create;
}
