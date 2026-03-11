import 'package:freezed_annotation/freezed_annotation.dart';
part 'return_product_weight_model.freezed.dart';
part 'return_product_weight_model.g.dart';

@freezed
abstract class ReturnProductWeightReqModel with _$ReturnProductWeightReqModel {
  const factory ReturnProductWeightReqModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'customer_id') required int customerId,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'weight') required double weight,
  }) = _ReturnProductWeightReqModel;
  factory ReturnProductWeightReqModel.fromJson(Map<String, Object?> json) =>
      _$ReturnProductWeightReqModelFromJson(json);
}
