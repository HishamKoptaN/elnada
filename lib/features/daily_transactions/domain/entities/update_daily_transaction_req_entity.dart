import 'package:form_inputs/form_inputs.dart';

import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';

class UpdateDailyTransactionReqEntity {
  UpdateDailyTransactionReqEntity({
    required this.customerId,
    required this.productId,
    required this.weight,
    required this.cage,
    required this.discount,
  });
  final GenericFormzInput<int> customerId;
  final GenericFormzInput<int> productId;
  final GenericFormzInput<String> weight;
  final GenericFormzInput<String> cage;
  final GenericFormzInput<String> discount;

  UpdateDailyTransactionReqEntity copyWith({
    GenericFormzInput<int>? customerId,
    GenericFormzInput<int>? productId,
    GenericFormzInput<String>? weight,
    GenericFormzInput<String>? cage,
    GenericFormzInput<String>? discount,
  }) {
    return UpdateDailyTransactionReqEntity(
      customerId: customerId ?? this.customerId,
      productId: productId ?? this.productId,
      weight: weight ?? this.weight,
      cage: cage ?? this.cage,
      discount: discount ?? this.discount,
    );
  }

  bool hasPriceChanged({required ProductPriceEntity originalProductPrice}) {
    final String originalStr =
        originalProductPrice.productDailyprice?.price?.trim() ?? "";
    final String currentStr = weight.value?.trim() ?? "";
    if (originalStr == currentStr) return false;
    final double? originalNum = double.tryParse(originalStr);
    final double? currentNum = double.tryParse(currentStr);
    if (originalNum != null && currentNum != null) {
      return originalNum != currentNum;
    }
    return originalStr != currentStr;
  }
}
