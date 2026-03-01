part of 'daily_transactions_bloc.dart';

@freezed
abstract class DailyTransactionsState with _$DailyTransactionsState {
  const factory DailyTransactionsState.initial() = _Initial;
  const factory DailyTransactionsState.loading() = _Loading;
  const factory DailyTransactionsState.loaded({
    required CreateDailyTransactionReqEntity createDailyTransactionReq,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory DailyTransactionsState.success() = _Success;
  const factory DailyTransactionsState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
