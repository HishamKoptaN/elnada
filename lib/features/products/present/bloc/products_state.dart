part of 'products_bloc.dart';

@freezed
abstract class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = _Initial;
  const factory ProductsState.loading() = _Loading;
  const factory ProductsState.loaded({
    required UpdateProductPriceReqEntity updateProductPriceReq,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory ProductsState.success() = _Success;
  const factory ProductsState.failure({required ApiErrorModel apiErrorModel}) =
      _Failure;
}
