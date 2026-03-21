part of 'create_customer_bloc.dart';

@freezed
abstract class CreateCustomerState with _$CreateCustomerState {
  const factory CreateCustomerState.initial() = _Initial;
  const factory CreateCustomerState.loading() = _Loading;
  const factory CreateCustomerState.loaded({
    required CreateCustomerReqEntity createCustomerReq,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory CreateCustomerState.success() = _Success;
  const factory CreateCustomerState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
