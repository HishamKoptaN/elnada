import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_daily_transaction_req_model.freezed.dart';
part 'update_daily_transaction_req_model.g.dart';

@freezed
abstract class UpdateDailyTransactionReqModel
    with _$UpdateDailyTransactionReqModel {
  const factory UpdateDailyTransactionReqModel({
    @JsonKey(name: 'customer_id') required int customerId,
    @JsonKey(name: 'weight') required double weight,
    @JsonKey(name: 'cage') required int cage,
    @JsonKey(name: 'discount') required double discount,
    @JsonKey(name: 'date') required DateTime? date,
  }) = _UpdateDailyTransactionReqModel;
  factory UpdateDailyTransactionReqModel.fromJson(Map<String, Object?> json) =>
      _$UpdateDailyTransactionReqModelFromJson(json);
}
