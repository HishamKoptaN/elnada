part of 'transactions_details_bloc.dart';

@freezed
abstract class TransactionsDetailsState with _$TransactionsDetailsState {
  const factory TransactionsDetailsState.initial() = _Initial;
  const factory TransactionsDetailsState.loading() = _Loading;
  const factory TransactionsDetailsState.loaded({
    required UpdateTransactionDetailsReqEntity createDailyTransactionReq,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory TransactionsDetailsState.success() = _Success;
  const factory TransactionsDetailsState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
