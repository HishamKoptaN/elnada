import '../../domain/entities/return_product_weight_entity.dart';
import '../models/return_product_weight_model.dart';

extension ReturnProductWeightReqEntityMapper on ReturnProductWeightReqEntity {
  ReturnProductWeightReqModel toModel() {
    return ReturnProductWeightReqModel(
      id: id?.value ?? 0,
      customerId: customerId?.value ?? 0,
      productId: productId?.value ?? 0,
      weight: double.parse(weight?.value ?? "0"),
      date: date,
    );
  }
}
