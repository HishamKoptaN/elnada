import 'package:abujena_dawajen/features/customers/data/models/customer_daily_reports_res_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../daily_collections/data/models/collection_model.dart';
import '../../../daily_transactions/data/models/transaction_model.dart';
part 'customer_daily_report_res_model.freezed.dart';
part 'customer_daily_report_res_model.g.dart';

@freezed
abstract class CustomerDailyReportDetailsResModel
    with _$CustomerDailyReportDetailsResModel {
  const factory CustomerDailyReportDetailsResModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'yesterday_closed_balance') int? yesterdayClosedBalance,
    @JsonKey(name: 'transactions') List<DailyTransactionModel>? transactions,
    @JsonKey(name: 'total_transactions_amount') int? totalTransactionsAmount,
    @JsonKey(name: 'collections') List<CollectionModel>? collections,
    @JsonKey(name: 'orders') List<ProductOrderModel>? orders,
    @JsonKey(name: 'closing_balance') int? closingBalance,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _CustomerDailyReportDetailsResModel;
  factory CustomerDailyReportDetailsResModel.fromJson(
    Map<String, Object?> json,
  ) => _$CustomerDailyReportDetailsResModelFromJson(json);
}

@freezed
abstract class ProductDailyTotalModel with _$ProductDailyTotalModel {
  const factory ProductDailyTotalModel({
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'total_weight') double? totalWeight,
    @JsonKey(name: 'total_amount') int? totalAmount,
  }) = _ProductDailyTotalModel;
  factory ProductDailyTotalModel.fromJson(Map<String, Object?> json) =>
      _$ProductDailyTotalModelFromJson(json);
}

@freezed
abstract class ProductOrderModel with _$ProductOrderModel {
  const factory ProductOrderModel({
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'total_count') int? totalCount,
  }) = _ProductOrderModel;
  factory ProductOrderModel.fromJson(Map<String, Object?> json) =>
      _$ProductOrderModelFromJson(json);
}

@freezed
abstract class ProductReturnModel with _$ProductReturnModel {
  const factory ProductReturnModel({
    @JsonKey(name: 'product') ProductModel? product,
    @JsonKey(name: 'total_weight') double? totalWeight,
  }) = _ProductReturnModel;
  factory ProductReturnModel.fromJson(Map<String, Object?> json) =>
      _$ProductReturnModelFromJson(json);
}
