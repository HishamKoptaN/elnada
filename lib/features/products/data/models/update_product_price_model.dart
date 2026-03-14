import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_product_price_model.freezed.dart';
part 'update_product_price_model.g.dart';

@freezed
abstract class UpdateProductPriceReqModel with _$UpdateProductPriceReqModel {
  const factory UpdateProductPriceReqModel({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'price') required double price,
    @JsonKey(name: 'date') DateTime? date,
  }) = _UpdateProductPriceReqModel;
  factory UpdateProductPriceReqModel.fromJson(Map<String, Object?> json) =>
      _$UpdateProductPriceReqModelFromJson(json);
}
