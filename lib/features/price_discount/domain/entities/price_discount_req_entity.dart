import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'price_discount_entity.dart';
part 'price_discount_req_entity.freezed.dart';

@freezed
abstract class PriceDiscountReqEntity with _$PriceDiscountReqEntity {
  const PriceDiscountReqEntity._();
  const factory PriceDiscountReqEntity({
    required PriceDiscountEntity? priceDiscount,
    required GenericFormzInput<int>? customerId,
    required GenericFormzInput<int>? productId,
    GenericFormzInput<double>? priceDiscountAmount,
  }) = _PriceDiscountReqEntity;
  factory PriceDiscountReqEntity.fromEntity(PriceDiscountEntity priceDiscount) {
    return PriceDiscountReqEntity(
      priceDiscount: priceDiscount,
      customerId: GenericFormzInput.dirty(priceDiscount.product?.id),
      productId: GenericFormzInput.dirty(priceDiscount.product?.id),
      priceDiscountAmount: GenericFormzInput.dirty(
        double.parse(priceDiscount.discountValue!),
      ),
    );
  }
  bool get hasChanged {
    final double originalAmount = double.parse(
      priceDiscountAmount!.value!.toString(),
    );
    final double currentAmount = priceDiscountAmount!.value!;
    return originalAmount != currentAmount;
  }
}
