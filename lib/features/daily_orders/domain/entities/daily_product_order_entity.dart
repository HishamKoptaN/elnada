import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_product_order_entity.freezed.dart';
part 'daily_product_order_entity.g.dart';

@freezed
abstract class DailyProductOrderEntity with _$DailyProductOrderEntity {
  const factory DailyProductOrderEntity({
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "total_count") int? totalCount,
  }) = _DailyProductOrderEntity;
  factory DailyProductOrderEntity.fromJson(Map<String, Object?> json) =>
      _$DailyProductOrderEntityFromJson(json);
}
