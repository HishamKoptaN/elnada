part of 'return_products_bloc.dart';

@freezed
abstract class ReturnProductsState with _$ReturnProductsState {
  const factory ReturnProductsState.initial() = _Initial;
  const factory ReturnProductsState.loading() = _Loading;
  const factory ReturnProductsState.loaded({
    required ReturnProductWeightReqEntity returnProductWeightReq,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory ReturnProductsState.success() = _Success;
  const factory ReturnProductsState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
