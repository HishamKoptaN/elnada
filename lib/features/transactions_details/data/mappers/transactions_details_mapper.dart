import '../models/update_daily_transaction_req_model.dart';
import '../../domain/entities/update_transaction_details_req_entity.dart';

extension UpdateTransactionDetailsReqEntityMapper
    on UpdateTransactionDetailsReqEntity {
  UpdateTransactionDetailsReqModel toModel() {
    return UpdateTransactionDetailsReqModel(
      weight: double.tryParse(weight?.value ?? '') ?? 0.0,
      cage: int.tryParse(cage?.value ?? '') ?? 0,
    );
  }
}
