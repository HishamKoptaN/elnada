import '../models/update_product_price_model.dart';
import '../../domain/entities/product_entity.dart';

extension UpdateProductPriceReqEntityMapper on UpdateProductPriceReqEntity {
  UpdateProductPriceReqModel toModel() {
    return UpdateProductPriceReqModel(
      productId: productId.value ?? 0,
      price: double.parse(price.value ?? "0"),
      date: date,
    );
  }
}
