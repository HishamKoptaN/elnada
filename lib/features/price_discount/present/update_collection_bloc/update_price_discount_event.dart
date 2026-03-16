part of 'update_price_discount_bloc.dart';

@freezed
abstract class PriceDiscountEvent with _$PriceDiscountEvent {
  const factory PriceDiscountEvent.dataChanged({
    required PriceDiscountReqEntity priceDiscountReq,
  }) = _DataChanged;
  const factory PriceDiscountEvent.update() = _Update;
}
