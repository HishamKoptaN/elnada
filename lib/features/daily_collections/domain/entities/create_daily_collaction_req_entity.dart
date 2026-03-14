import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';

class CreateDailyCollectionReqEntity {
  CreateDailyCollectionReqEntity({
    required this.customerId,
    required this.amount,
    this.date,
  });
  final GenericFormzInput<int> customerId;
  final GenericFormzInput<String> amount;
  final DateTime? date;

  CreateDailyCollectionReqEntity copyWith({
    GenericFormzInput<int>? customerId,
    GenericFormzInput<String>? amount,
    DateTime? date,
  }) {
    return CreateDailyCollectionReqEntity(
      customerId: customerId ?? this.customerId,
      amount: amount ?? this.amount,
      date: date ?? this.date,
    );
  }

  bool get isValid => Formz.validate([customerId, amount]);
}
