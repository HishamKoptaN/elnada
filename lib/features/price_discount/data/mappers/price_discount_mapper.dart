import '../../../../core/utils/date_formatter.dart';
import '../../../customers/data/mappers/customer_daily_reports_res_mapper.dart';
import '../../domain/entities/price_discount_entity.dart';
import '../models/price_discount_model.dart';

extension PriceDiscountMapper on PriceDiscountModel {
  PriceDiscountEntity toEntity() {
    return PriceDiscountEntity(
      id: id ?? 0,
      discountValue: discountValue.toString(),
      product: product!.toEntity(),
      createdAt: formatDate(dateTime: createdAt),
    );
  }
}
