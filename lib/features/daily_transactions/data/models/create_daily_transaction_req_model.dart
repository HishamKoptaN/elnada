import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_daily_transaction_req_model.freezed.dart';
part 'create_daily_transaction_req_model.g.dart';

@freezed
abstract class CreateDailyTransactionReqModel
    with _$CreateDailyTransactionReqModel {
  const factory CreateDailyTransactionReqModel({
    @JsonKey(name: 'customer_id') required int customerId,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'weight') required double weight,
    @JsonKey(name: 'cage') required int cage,
    @JsonKey(name: 'discount') int? discount,
  }) = _CreateDailyTransactionReqModel;
  factory CreateDailyTransactionReqModel.fromJson(Map<String, Object?> json) =>
      _$CreateDailyTransactionReqModelFromJson(json);
}
