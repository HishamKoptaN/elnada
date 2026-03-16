import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/price_discount_req_entity.dart';
part 'price_discount_req_model.freezed.dart';
part 'price_discount_req_model.g.dart';

@freezed
abstract class PriceDiscountReqModel with _$PriceDiscountReqModel {
  const factory PriceDiscountReqModel({
    @JsonKey(name: 'customer_id') required int customerId,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'discount_value') required double discountValue,
  }) = _PriceDiscountReqModel;
  factory PriceDiscountReqModel.fromEntity({
    required PriceDiscountReqEntity priceDiscountReq,
  }) {
    return PriceDiscountReqModel(
      customerId: priceDiscountReq.customerId?.value ?? 0,
      productId: priceDiscountReq.productId?.value ?? 0,
      discountValue: priceDiscountReq.priceDiscountAmount?.value ?? 0,
    );
  }
  factory PriceDiscountReqModel.fromJson(Map<String, Object?> json) =>
      _$PriceDiscountReqModelFromJson(json);
}
