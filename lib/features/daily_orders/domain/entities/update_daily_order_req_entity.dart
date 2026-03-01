import 'package:form_inputs/form_inputs.dart';

import '../../../customers/domain/entities/customer_entity.dart';

class UpdateDailyOrderReqEntity {
  UpdateDailyOrderReqEntity({
    required this.customerId,
    required this.productId,
    required this.count,
  });
  final GenericFormzInput<int> customerId;
  final GenericFormzInput<int> productId;
  final GenericFormzInput<String> count;

  UpdateDailyOrderReqEntity copyWith({
    GenericFormzInput<int>? customerId,
    GenericFormzInput<int>? productId,
    GenericFormzInput<String>? count,
  }) {
    return UpdateDailyOrderReqEntity(
      customerId: customerId ?? this.customerId,
      productId: productId ?? this.productId,
      count: count ?? this.count,
    );
  }

  bool hasPriceChanged({required ProductPriceEntity originalProductPrice}) {
    final String originalStr = originalProductPrice.price?.trim() ?? "";
    final String currentStr = count.value?.toString().trim() ?? "";
    if (originalStr == currentStr) return false;
    final double? originalNum = double.tryParse(originalStr);
    final double? currentNum = double.tryParse(currentStr);
    if (originalNum != null && currentNum != null) {
      return originalNum != currentNum;
    }
    return originalStr != currentStr;
  }
}
