import '../models/create_daily_collection_req_model.dart';
import '../models/update_daily_collection_req_model.dart';
import '../../domain/entities/update_daily_collaction_req_entity.dart';
import '../../domain/entities/create_daily_collaction_req_entity.dart';

extension CreateDailyCollectionReqEntityMapper
    on CreateDailyCollectionReqEntity {
  CreateDailyCollectionReqModel toModel() {
    return CreateDailyCollectionReqModel(
      customerId: this.customerId.value ?? 0,
      amount: int.parse(amount.value ?? "0"),
    );
  }
}

extension UpdateDailyCollectionReqEntityMapper
    on UpdateDailyCollectionReqEntity {
  UpdateDailyCollectionReqModel toModel() {
    return UpdateDailyCollectionReqModel(
      customerId: this.customerId.value ?? 0,
      amount: int.parse(amount.value ?? ""),
    );
  }
}
