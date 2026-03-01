import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_daily_reports_res_model.freezed.dart';
part 'customer_daily_reports_res_model.g.dart';

@freezed
abstract class CustomerDailyReportsResModel
    with _$CustomerDailyReportsResModel {
  const factory CustomerDailyReportsResModel({
    @JsonKey(name: 'product_daily_prices')
    List<ProductPriceModel>? productDailyPrices,
    @JsonKey(name: 'customer_daily_reports')
    List<CustomerDailyReportModel>? customerDailyReports,
  }) = _CustomerDailyReportsResModel;
  factory CustomerDailyReportsResModel.fromJson(Map<String, Object?> json) =>
      _$CustomerDailyReportsResModelFromJson(json);
}

@freezed
abstract class CustomerDailyReportModel with _$CustomerDailyReportModel {
  const factory CustomerDailyReportModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'customer') CustomerModel? customer,
    @JsonKey(name: 'yesterday_closed_balance') int? yesterdayClosedBalance,
    @JsonKey(name: 'product_daily_totals')
    List<ProductDailyTotalModel>? productDailyTotals,
    @JsonKey(name: 'collections') List<CollectionModel>? collections,
    @JsonKey(name: 'closing_balance') int? closingBalance,
    @JsonKey(name: 'product_orders') List<ProductOrderModel>? productOrders,
  }) = _CustomerDailyReportModel;
  factory CustomerDailyReportModel.fromJson(Map<String, Object?> json) =>
      _$CustomerDailyReportModelFromJson(json);
}

@freezed
abstract class CustomerModel with _$CustomerModel {
  const factory CustomerModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'number') int? number,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _CustomerModel;
  factory CustomerModel.fromJson(Map<String, Object?> json) =>
      _$CustomerModelFromJson(json);
}

@freezed
abstract class ProductPriceModel with _$ProductPriceModel {
  const factory ProductPriceModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'price') double? price,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _ProductPriceModel;
  factory ProductPriceModel.fromJson(Map<String, Object?> json) =>
      _$ProductPriceModelFromJson(json);
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
abstract class CollectionModel with _$CollectionModel {
  const factory CollectionModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'amount') int? amount,
  }) = _CollectionModel;
  factory CollectionModel.fromJson(Map<String, Object?> json) =>
      _$CollectionModelFromJson(json);
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
