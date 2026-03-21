part of 'create_customer_bloc.dart';

@freezed
abstract class CreateCustomerEvent with _$CreateCustomerEvent {
  const factory CreateCustomerEvent.dataChanged({
    required CreateCustomerReqEntity createCustomerReq,
  }) = _DataChanged;
  const factory CreateCustomerEvent.create() = _Create;
}
