import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../customers/data/models/customer_daily_reports_res_model.dart';
part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
abstract class DailyTransactionModel with _$DailyTransactionModel {
  const factory DailyTransactionModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'total_amount') int? totalAmount,
    @JsonKey(name: 'details') List<TransactionDetailModel>? details,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _DailyTransactionModel;
  factory DailyTransactionModel.fromJson(Map<String, Object?> json) =>
      _$DailyTransactionModelFromJson(json);
}

@freezed
abstract class TransactionDetailModel with _$TransactionDetailModel {
  const factory TransactionDetailModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'product') ProductModel? product,
    @JsonKey(name: 'weight') double? weight,
    @JsonKey(name: 'price_at_time') double? priceAtTime,
    @JsonKey(name: 'discount') int? discount,
    @JsonKey(name: 'total') int? total,
  }) = _TransactionDetailModel;
  factory TransactionDetailModel.fromJson(Map<String, Object?> json) =>
      _$TransactionDetailModelFromJson(json);
}
