part of 'transactions_details_bloc.dart';

@freezed
abstract class TransactionsDetailsEvent with _$TransactionsDetailsEvent {
  const factory TransactionsDetailsEvent.dataChanged({
    required UpdateTransactionDetailsReqEntity updateTransactionDetailsReq,
  }) = _DataChanged;
  const factory TransactionsDetailsEvent.update() = _Update;
}
