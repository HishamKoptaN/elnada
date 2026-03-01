import '../models/create_daily_order_req_model.dart';
import '../models/update_daily_orders_req_model.dart';
import '../../domain/entities/update_daily_order_req_entity.dart';
import '../../domain/entities/create_daily_order_req_entity.dart';

extension CreateDailyOrderReqEntityMapper on CreateDailyOrderReqEntity {
  CreateDailyOrderReqModel toModel() {
    return CreateDailyOrderReqModel(
      customerId: customerId.value ?? 0,
      productId: productId.value ?? 0,
      count: int.tryParse(count.value ?? "0") ?? 0,
    );
  }
}

extension UpdateDailyOrderReqEntityMapper on UpdateDailyOrderReqEntity {
  UpdateDailyOrderReqModel toModel() {
    return UpdateDailyOrderReqModel(
      customerId: customerId.value ?? 0,
      productId: productId.value ?? 0,
      count: int.tryParse(count.value ?? "") ?? 0,
    );
  }
}
