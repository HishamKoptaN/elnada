import 'package:form_inputs/form_inputs.dart';

import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';

class UpdateProductPriceReqEntity {
  UpdateProductPriceReqEntity({required this.productId, required this.price});
  final GenericFormzInput<int> productId;
  final GenericFormzInput<String> price;

  UpdateProductPriceReqEntity copyWith({
    GenericFormzInput<int>? productId,
    GenericFormzInput<String>? price,
  }) {
    return UpdateProductPriceReqEntity(
      productId: productId ?? this.productId,
      price: price ?? this.price,
    );
  }

  bool hasPriceChanged({required ProductPriceEntity originalProductPrice}) {
    final String originalStr =
        originalProductPrice.productDailyprice?.price?.trim() ?? "";
    final String currentStr = price.value?.trim() ?? "";
    if (originalStr == currentStr) return false;
    final double? originalNum = double.tryParse(originalStr);
    final double? currentNum = double.tryParse(currentStr);
    if (originalNum != null && currentNum != null) {
      return originalNum != currentNum;
    }
    return originalStr != currentStr;
  }
}
