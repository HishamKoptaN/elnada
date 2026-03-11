import 'package:form_inputs/form_inputs.dart';

class CreateDailyTransactionReqEntity {
  CreateDailyTransactionReqEntity({
    this.customerId,
    this.productId,
    this.weight,
    this.cage,
    this.discount,
  });
  final GenericFormzInput<int>? customerId;
  final GenericFormzInput<int>? productId;
  final GenericFormzInput<String>? weight;
  final GenericFormzInput<String>? cage;
  final GenericFormzInput<String>? discount;
  CreateDailyTransactionReqEntity copyWith({
    GenericFormzInput<int>? customerId,
    GenericFormzInput<int>? productId,
    GenericFormzInput<String>? weight,
    GenericFormzInput<String>? cage,
    GenericFormzInput<String>? discount,
  }) {
    return CreateDailyTransactionReqEntity(
      customerId: customerId ?? this.customerId,
      productId: productId ?? this.productId,
      weight: weight ?? this.weight,
      cage: cage ?? this.cage,
      discount: discount ?? this.discount,
    );
  }
}
