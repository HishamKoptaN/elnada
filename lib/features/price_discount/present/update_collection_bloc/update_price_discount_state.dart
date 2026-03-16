part of 'update_price_discount_bloc.dart';

@freezed
abstract class PriceDiscountState with _$PriceDiscountState {
  const factory PriceDiscountState.initial() = _Initial;
  const factory PriceDiscountState.loading() = _Loading;
  const factory PriceDiscountState.loaded({
    required PriceDiscountReqEntity priceDiscountReq,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory PriceDiscountState.success() = _Success;
  const factory PriceDiscountState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
