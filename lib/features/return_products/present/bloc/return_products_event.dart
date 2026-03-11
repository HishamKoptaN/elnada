part of 'return_products_bloc.dart';

@freezed
abstract class ReturnProductsEvent with _$ReturnProductsEvent {
  const factory ReturnProductsEvent.dataChanged({
    required ReturnProductWeightReqEntity returnProductWeightReq,
  }) = _DataChanged;
  const factory ReturnProductsEvent.updateProductPrice() = _UpdateReturnProduct;
}
