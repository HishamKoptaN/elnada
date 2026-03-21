// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_daily_reports_res_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomersResEntity _$CustomersResEntityFromJson(Map<String, dynamic> json) =>
    _CustomersResEntity(
      canInsertPreviusDayData: json['canInsertPreviusDayData'] as bool?,
      productDailyPrices: (json['productDailyPrices'] as List<dynamic>?)
          ?.map((e) => ProductPriceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      customerDailyReports: (json['customerDailyReports'] as List<dynamic>?)
          ?.map(
            (e) =>
                CustomerDailyReportEntity.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$CustomersResEntityToJson(_CustomersResEntity instance) =>
    <String, dynamic>{
      'canInsertPreviusDayData': instance.canInsertPreviusDayData,
      'productDailyPrices': instance.productDailyPrices,
      'customerDailyReports': instance.customerDailyReports,
    };

_CustomerDailyReportEntity _$CustomerDailyReportEntityFromJson(
  Map<String, dynamic> json,
) => _CustomerDailyReportEntity(
  id: (json['id'] as num?)?.toInt(),
  customer: json['customer'] == null
      ? null
      : CustomerEntity.fromJson(json['customer'] as Map<String, dynamic>),
  yesterdayClosedBalance: json['yesterdayClosedBalance'] as String?,
  productDailyTotals: (json['productDailyTotals'] as List<dynamic>?)
      ?.map((e) => ProductDailyTotalEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalCollections: json['totalCollections'] as String?,
  returns: (json['returns'] as List<dynamic>?)
      ?.map((e) => ProductReturnEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  closingBalance: json['closingBalance'] as String?,
  productOrders: (json['productOrders'] as List<dynamic>?)
      ?.map((e) => DailyProductOrderEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  priceDiscounts: (json['priceDiscounts'] as List<dynamic>?)
      ?.map((e) => PriceDiscountEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CustomerDailyReportEntityToJson(
  _CustomerDailyReportEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'customer': instance.customer,
  'yesterdayClosedBalance': instance.yesterdayClosedBalance,
  'productDailyTotals': instance.productDailyTotals,
  'totalCollections': instance.totalCollections,
  'returns': instance.returns,
  'closingBalance': instance.closingBalance,
  'productOrders': instance.productOrders,
  'priceDiscounts': instance.priceDiscounts,
};

_CustomerEntity _$CustomerEntityFromJson(Map<String, dynamic> json) =>
    _CustomerEntity(
      id: (json['id'] as num?)?.toInt(),
      number: json['number'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$CustomerEntityToJson(_CustomerEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'name': instance.name,
      'phone': instance.phone,
    };

_ProductPriceEntity _$ProductPriceEntityFromJson(Map<String, dynamic> json) =>
    _ProductPriceEntity(
      product: json['product'] == null
          ? null
          : ProductEntity.fromJson(json['product'] as Map<String, dynamic>),
      productDailyprice: json['productDailyprice'] == null
          ? null
          : ProductDailyPriceEntity.fromJson(
              json['productDailyprice'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ProductPriceEntityToJson(_ProductPriceEntity instance) =>
    <String, dynamic>{
      'product': instance.product,
      'productDailyprice': instance.productDailyprice,
    };

_ProductDailyPriceEntity _$ProductDailyPriceEntityFromJson(
  Map<String, dynamic> json,
) => _ProductDailyPriceEntity(
  id: (json['id'] as num?)?.toInt(),
  price: json['price'] as String?,
  productId: (json['productId'] as num?)?.toInt(),
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$ProductDailyPriceEntityToJson(
  _ProductDailyPriceEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'price': instance.price,
  'productId': instance.productId,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};

_ProductDailyTotalEntity _$ProductDailyTotalEntityFromJson(
  Map<String, dynamic> json,
) => _ProductDailyTotalEntity(
  productId: (json['productId'] as num?)?.toInt(),
  totalWeight: json['totalWeight'] as String?,
  totalAmount: json['totalAmount'] as String?,
);

Map<String, dynamic> _$ProductDailyTotalEntityToJson(
  _ProductDailyTotalEntity instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'totalWeight': instance.totalWeight,
  'totalAmount': instance.totalAmount,
};

_ProductReturnEntity _$ProductReturnEntityFromJson(Map<String, dynamic> json) =>
    _ProductReturnEntity(
      product: json['product'] == null
          ? null
          : ProductEntity.fromJson(json['product'] as Map<String, dynamic>),
      totalWeight: json['totalWeight'] as String?,
    );

Map<String, dynamic> _$ProductReturnEntityToJson(
  _ProductReturnEntity instance,
) => <String, dynamic>{
  'product': instance.product,
  'totalWeight': instance.totalWeight,
};

_ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) =>
    _ProductEntity(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ProductEntityToJson(_ProductEntity instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
