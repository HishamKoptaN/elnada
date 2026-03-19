import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'return_product_weight_entity.freezed.dart';

@freezed
abstract class ReturnProductWeightReqEntity
    with _$ReturnProductWeightReqEntity {
  const factory ReturnProductWeightReqEntity({
    GenericFormzInput<int>? id,
    GenericFormzInput<int>? customerId,
    GenericFormzInput<int>? productId,
    GenericFormzInput<String>? weight,
    DateTime? date,
  }) = _ReturnProductWeightReqEntity;
}
