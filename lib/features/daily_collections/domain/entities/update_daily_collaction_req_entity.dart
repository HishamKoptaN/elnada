import 'package:form_inputs/form_inputs.dart';

import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';

class UpdateDailyCollectionReqEntity {
  UpdateDailyCollectionReqEntity({
    required this.customerId,
    required this.amount,
  });
  final GenericFormzInput<int> customerId;
  final GenericFormzInput<String> amount;

  UpdateDailyCollectionReqEntity copyWith({
    GenericFormzInput<int>? customerId,
    GenericFormzInput<String>? amount,
  }) {
    return UpdateDailyCollectionReqEntity(
      customerId: customerId ?? this.customerId,
      amount: amount ?? this.amount,
    );
  }

  bool hasPriceChanged({required ProductPriceEntity originalProductPrice}) {
    final String originalStr =
        originalProductPrice.productDailyprice?.price?.toString() ?? "";
    final String currentStr = amount.value?.trim() ?? "";
    if (originalStr == currentStr) return false;
    final double? originalNum = double.tryParse(originalStr);
    final double? currentNum = double.tryParse(currentStr);
    if (originalNum != null && currentNum != null) {
      return originalNum != currentNum;
    }
    return originalStr != currentStr;
  }
}
