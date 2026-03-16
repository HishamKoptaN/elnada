import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';

class CreateDailyOrderReqEntity {
  CreateDailyOrderReqEntity({
    required this.customerId,
    required this.productId,
    this.count,
  });
  final GenericFormzInput<int> customerId;
  final GenericFormzInput<int> productId;
  final GenericFormzInput<String>? count;
  CreateDailyOrderReqEntity copyWith({
    GenericFormzInput<int>? customerId,
    GenericFormzInput<int>? productId,
    GenericFormzInput<String>? count,
  }) {
    return CreateDailyOrderReqEntity(
      customerId: customerId ?? this.customerId,
      productId: productId ?? this.productId,
      count: count ?? this.count,
    );
  }

  bool get isValid => Formz.validate([customerId, productId, count ?? const GenericFormzInput.pure()]);
}
