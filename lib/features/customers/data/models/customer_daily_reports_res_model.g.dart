// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_daily_reports_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerDailyReportsResModel _$CustomerDailyReportsResModelFromJson(
  Map<String, dynamic> json,
) => _CustomerDailyReportsResModel(
  productDailyPrices: (json['product_daily_prices'] as List<dynamic>?)
      ?.map((e) => ProductPriceModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  customerDailyReports: (json['customer_daily_reports'] as List<dynamic>?)
      ?.map((e) => CustomerDailyReportModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CustomerDailyReportsResModelToJson(
  _CustomerDailyReportsResModel instance,
) => <String, dynamic>{
  'product_daily_prices': instance.productDailyPrices,
  'customer_daily_reports': instance.customerDailyReports,
};

_CustomerDailyReportModel _$CustomerDailyReportModelFromJson(
  Map<String, dynamic> json,
) => _CustomerDailyReportModel(
  id: (json['id'] as num?)?.toInt(),
  customer: json['customer'] == null
      ? null
      : CustomerModel.fromJson(json['customer'] as Map<String, dynamic>),
  yesterdayClosedBalance: (json['yesterday_closed_balance'] as num?)?.toInt(),
  productDailyTotals: (json['product_daily_totals'] as List<dynamic>?)
      ?.map((e) => ProductDailyTotalModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  returns: (json['returns'] as List<dynamic>?)
      ?.map((e) => ProductReturnModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalCollections: (json['total_collections'] as num?)?.toInt(),
  closingBalance: (json['closing_balance'] as num?)?.toInt(),
  productOrders: (json['product_orders'] as List<dynamic>?)
      ?.map((e) => ProductOrderModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CustomerDailyReportModelToJson(
  _CustomerDailyReportModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'customer': instance.customer,
  'yesterday_closed_balance': instance.yesterdayClosedBalance,
  'product_daily_totals': instance.productDailyTotals,
  'returns': instance.returns,
  'total_collections': instance.totalCollections,
  'closing_balance': instance.closingBalance,
  'product_orders': instance.productOrders,
};

_CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) =>
    _CustomerModel(
      id: (json['id'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$CustomerModelToJson(_CustomerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'name': instance.name,
      'phone': instance.phone,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_ProductPriceModel _$ProductPriceModelFromJson(Map<String, dynamic> json) =>
    _ProductPriceModel(
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      productDailyprice: json['productDailyprice'] == null
          ? null
          : ProductDailyPriceModel.fromJson(
              json['productDailyprice'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ProductPriceModelToJson(_ProductPriceModel instance) =>
    <String, dynamic>{
      'product': instance.product,
      'productDailyprice': instance.productDailyprice,
    };

_ProductDailyPriceModel _$ProductDailyPriceModelFromJson(
  Map<String, dynamic> json,
) => _ProductDailyPriceModel(
  id: (json['id'] as num?)?.toInt(),
  price: (json['price'] as num?)?.toDouble(),
  productId: (json['product_id'] as num?)?.toInt(),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$ProductDailyPriceModelToJson(
  _ProductDailyPriceModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'price': instance.price,
  'product_id': instance.productId,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};

_ProductDailyTotalModel _$ProductDailyTotalModelFromJson(
  Map<String, dynamic> json,
) => _ProductDailyTotalModel(
  productId: (json['product_id'] as num?)?.toInt(),
  totalWeight: (json['total_weight'] as num?)?.toDouble(),
  totalAmount: (json['total_amount'] as num?)?.toInt(),
);

Map<String, dynamic> _$ProductDailyTotalModelToJson(
  _ProductDailyTotalModel instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'total_weight': instance.totalWeight,
  'total_amount': instance.totalAmount,
};

_ProductReturnModel _$ProductReturnModelFromJson(Map<String, dynamic> json) =>
    _ProductReturnModel(
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      totalWeight: (json['total_weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProductReturnModelToJson(_ProductReturnModel instance) =>
    <String, dynamic>{
      'product': instance.product,
      'total_weight': instance.totalWeight,
    };

_ProductOrderModel _$ProductOrderModelFromJson(Map<String, dynamic> json) =>
    _ProductOrderModel(
      productId: (json['product_id'] as num?)?.toInt(),
      totalCount: (json['total_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductOrderModelToJson(_ProductOrderModel instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'total_count': instance.totalCount,
    };

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
