import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';

class CreateDailyCollectionReqEntity {
  CreateDailyCollectionReqEntity({
    required this.customerId,
    required this.amount,
  });
  final GenericFormzInput<int> customerId;
  final GenericFormzInput<String> amount;

  CreateDailyCollectionReqEntity copyWith({
    GenericFormzInput<int>? customerId,
    GenericFormzInput<String>? amount,
  }) {
    return CreateDailyCollectionReqEntity(
      customerId: customerId ?? this.customerId,
      amount: amount ?? this.amount,
    );
  }

  bool get isValid => Formz.validate([customerId, amount]);
}
