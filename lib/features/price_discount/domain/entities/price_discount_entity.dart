import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
part 'price_discount_entity.freezed.dart';
part 'price_discount_entity.g.dart';

@freezed
abstract class PriceDiscountEntity with _$PriceDiscountEntity {
  const factory PriceDiscountEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'discount_value') String? discountValue,
    @JsonKey(name: 'product') ProductEntity? product,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _PriceDiscountEntity;
  factory PriceDiscountEntity.fromJson(Map<String, Object?> json) =>
      _$PriceDiscountEntityFromJson(json);
}
