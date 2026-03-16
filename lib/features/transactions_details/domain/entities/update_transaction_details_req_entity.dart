import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../daily_transactions/domain/entities/daily_transaction_entity.dart';
part 'update_transaction_details_req_entity.freezed.dart';

@freezed
abstract class UpdateTransactionDetailsReqEntity
    with _$UpdateTransactionDetailsReqEntity {
  const UpdateTransactionDetailsReqEntity._();
  const factory UpdateTransactionDetailsReqEntity({
    required TransactionDetailEntity? transactionDetails,
    required GenericFormzInput<int>? id,
    required GenericFormzInput<String>? weight,
    required GenericFormzInput<String>? cage,
  }) = _UpdateTransactionDetailsReqEntity;

  factory UpdateTransactionDetailsReqEntity.fromEntity(
    TransactionDetailEntity transactionDetails,
  ) {
    return UpdateTransactionDetailsReqEntity(
      transactionDetails: transactionDetails,
      id: GenericFormzInput.dirty(transactionDetails.id ?? 0),
      weight: GenericFormzInput.dirty(
        transactionDetails.weight?.toString() ?? '',
      ),
      cage: GenericFormzInput.dirty(transactionDetails.cage?.toString() ?? ''),
    );
  }
  bool get hasChanged {
    final String originalWeight = transactionDetails?.weight?.trim() ?? '';
    final String currentWeight = weight!.value!.trim();
    final String originalCage = transactionDetails?.cage?.trim() ?? '';
    final String currentCage = cage!.value!.trim();
    return originalWeight != currentWeight || originalCage != currentCage;
  }
}
