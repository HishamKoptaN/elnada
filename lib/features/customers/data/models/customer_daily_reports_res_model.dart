import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../price_discount/data/models/price_discount_model.dart';
part 'customer_daily_reports_res_model.freezed.dart';
part 'customer_daily_reports_res_model.g.dart';

@freezed
abstract class CustomerDailyReportsResModel
    with _$CustomerDailyReportsResModel {
  const factory CustomerDailyReportsResModel({
    @JsonKey(name: 'can_insert_previus_day_data') bool? canInsertPreviusDayData,
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
    @JsonKey(name: 'returns') List<ProductReturnModel>? returns,
    @JsonKey(name: 'total_collections') int? totalCollections,
    @JsonKey(name: 'closing_balance') int? closingBalance,
    @JsonKey(name: 'product_orders') List<ProductOrderModel>? productOrders,
    @JsonKey(name: 'price_discounts') List<PriceDiscountModel>? priceDiscounts,
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
    @JsonKey(name: 'product') ProductModel? product,
    @JsonKey(name: 'productDailyprice')
    ProductDailyPriceModel? productDailyprice,
  }) = _ProductPriceModel;
  factory ProductPriceModel.fromJson(Map<String, Object?> json) =>
      _$ProductPriceModelFromJson(json);
}

@freezed
abstract class ProductDailyPriceModel with _$ProductDailyPriceModel {
  const factory ProductDailyPriceModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'price') double? price,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _ProductDailyPriceModel;
  factory ProductDailyPriceModel.fromJson(Map<String, Object?> json) =>
      _$ProductDailyPriceModelFromJson(json);
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
abstract class ProductReturnModel with _$ProductReturnModel {
  const factory ProductReturnModel({
    @JsonKey(name: 'product') ProductModel? product,
    @JsonKey(name: 'total_weight') double? totalWeight,
  }) = _ProductReturnModel;
  factory ProductReturnModel.fromJson(Map<String, Object?> json) =>
      _$ProductReturnModelFromJson(json);
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
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
  }) = _ProductModel;
  factory ProductModel.fromJson(Map<String, Object?> json) =>
      _$ProductModelFromJson(json);
}
