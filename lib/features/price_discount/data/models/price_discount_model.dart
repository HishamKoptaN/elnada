import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../customers/data/models/customer_daily_reports_res_model.dart';
part 'price_discount_model.freezed.dart';
part 'price_discount_model.g.dart';

@freezed
abstract class PriceDiscountModel with _$PriceDiscountModel {
  const factory PriceDiscountModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'product') ProductModel? product,
    @JsonKey(name: 'discount_value') int? discountValue,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _PriceDiscountModel;
  factory PriceDiscountModel.fromJson(Map<String, Object?> json) =>
      _$PriceDiscountModelFromJson(json);
}
