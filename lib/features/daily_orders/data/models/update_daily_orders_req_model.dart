import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_daily_orders_req_model.freezed.dart';
part 'update_daily_orders_req_model.g.dart';

@freezed
abstract class UpdateDailyOrderReqModel with _$UpdateDailyOrderReqModel {
  const factory UpdateDailyOrderReqModel({
    @JsonKey(name: 'customer_id') required int customerId,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'count') required int count,
  }) = _UpdateDailyOrderReqModel;
  factory UpdateDailyOrderReqModel.fromJson(Map<String, Object?> json) =>
      _$UpdateDailyOrderReqModelFromJson(json);
}
