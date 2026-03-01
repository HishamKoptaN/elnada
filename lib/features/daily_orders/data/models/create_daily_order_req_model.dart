import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_daily_order_req_model.freezed.dart';
part 'create_daily_order_req_model.g.dart';

@freezed
abstract class CreateDailyOrderReqModel
    with _$CreateDailyOrderReqModel {
  const factory CreateDailyOrderReqModel({
    @JsonKey(name: 'customer_id') required int customerId,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'count') required int count,
  }) = _CreateDailyOrderReqModel;
  factory CreateDailyOrderReqModel.fromJson(Map<String, Object?> json) =>
      _$CreateDailyOrderReqModelFromJson(json);
}
