part of 'products_bloc.dart';

@freezed
abstract class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.dataChanged({
    required UpdateProductPriceReqEntity updateProductPriceReq,
  }) = _DataChanged;
  const factory ProductsEvent.updateProductPrice() = _UpdateProductPrice;
}
