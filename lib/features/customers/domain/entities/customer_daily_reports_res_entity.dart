import '../../../daily_orders/domain/entities/daily_product_order_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../price_discount/domain/entities/price_discount_entity.dart';
part 'customer_daily_reports_res_entity.freezed.dart';
part 'customer_daily_reports_res_entity.g.dart';

@freezed
abstract class CustomersResEntity with _$CustomersResEntity {
  const factory CustomersResEntity({
    bool? canInsertPreviusDayData,
    List<ProductPriceEntity>? productDailyPrices,
    List<CustomerDailyReportEntity>? customerDailyReports,
  }) = _CustomersResEntity;
  factory CustomersResEntity.fromJson(Map<String, Object?> json) =>
      _$CustomersResEntityFromJson(json);
}

@freezed
abstract class CustomerDailyReportEntity with _$CustomerDailyReportEntity {
  const factory CustomerDailyReportEntity({
    int? id,
    CustomerEntity? customer,
    String? yesterdayClosedBalance,
    List<ProductDailyTotalEntity>? productDailyTotals,
    String? totalCollections,
    List<ProductReturnEntity>? returns,
    String? closingBalance,
    List<DailyProductOrderEntity>? productOrders,
    List<PriceDiscountEntity>? priceDiscounts,
  }) = _CustomerDailyReportEntity;
  factory CustomerDailyReportEntity.fromJson(Map<String, Object?> json) =>
      _$CustomerDailyReportEntityFromJson(json);
}

@freezed
abstract class CustomerEntity with _$CustomerEntity {
  const factory CustomerEntity({
    int? id,
    String? number,
    String? name,
    String? phone,
  }) = _CustomerEntity;
  factory CustomerEntity.fromJson(Map<String, Object?> json) =>
      _$CustomerEntityFromJson(json);
}

@freezed
abstract class ProductPriceEntity with _$ProductPriceEntity {
  const factory ProductPriceEntity({
    ProductEntity? product,
    ProductDailyPriceEntity? productDailyprice,
  }) = _ProductPriceEntity;
  factory ProductPriceEntity.fromJson(Map<String, Object?> json) =>
      _$ProductPriceEntityFromJson(json);
}

@freezed
abstract class ProductDailyPriceEntity with _$ProductDailyPriceEntity {
  const factory ProductDailyPriceEntity({
    int? id,
    String? price,
    int? productId,
    String? createdAt,
    String? updatedAt,
  }) = _ProductDailyPriceEntity;
  factory ProductDailyPriceEntity.fromJson(Map<String, Object?> json) =>
      _$ProductDailyPriceEntityFromJson(json);
}

@freezed
abstract class ProductDailyTotalEntity with _$ProductDailyTotalEntity {
  const factory ProductDailyTotalEntity({
    int? productId,
    String? totalWeight,
    String? totalAmount,
  }) = _ProductDailyTotalEntity;
  factory ProductDailyTotalEntity.fromJson(Map<String, Object?> json) =>
      _$ProductDailyTotalEntityFromJson(json);
}

@freezed
abstract class ProductReturnEntity with _$ProductReturnEntity {
  const factory ProductReturnEntity({
    ProductEntity? product,
    String? totalWeight,
  }) = _ProductReturnEntity;
  factory ProductReturnEntity.fromJson(Map<String, Object?> json) =>
      _$ProductReturnEntityFromJson(json);
}

@freezed
abstract class ProductEntity with _$ProductEntity {
  const factory ProductEntity({int? id, String? name}) = _ProductEntity;
  factory ProductEntity.fromJson(Map<String, Object?> json) =>
      _$ProductEntityFromJson(json);
}
