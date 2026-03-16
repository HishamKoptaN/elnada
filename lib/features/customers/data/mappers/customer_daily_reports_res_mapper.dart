import '../../../daily_orders/domain/entities/daily_product_order_entity.dart';
import '../../../price_discount/data/mappers/price_discount_mapper.dart';
import '../../domain/entities/customer_daily_reports_res_entity.dart';
import '../models/customer_daily_reports_res_model.dart';

extension CustomerDailyReportsResMapper on CustomerDailyReportsResModel {
  CustomersResEntity toEntity() {
    return CustomersResEntity(
      canInsertPreviusDayData: canInsertPreviusDayData ?? false,
      productDailyPrices:
          productDailyPrices?.map((e) => e.toEntity()).toList() ?? [],
      customerDailyReports:
          customerDailyReports?.map((e) => e.toEntity()).toList() ?? [],
    );
  }
}

extension CustomerDailyReportMapper on CustomerDailyReportModel {
  CustomerDailyReportEntity toEntity() {
    return CustomerDailyReportEntity(
      id: id ?? 0,
      customer: customer?.toEntity() ?? const CustomerEntity(),
      yesterdayClosedBalance: yesterdayClosedBalance?.toString() ?? '',
      productDailyTotals:
          productDailyTotals?.map((e) => e.toEntity()).toList() ?? [],
      returns: returns?.map((e) => e.toEntity()).toList() ?? [],
      totalCollections: totalCollections.toString(),
      closingBalance: closingBalance.toString(),
      productOrders: productOrders?.map((e) => e.toEntity()).toList() ?? [],
      priceDiscounts: priceDiscounts?.map((e) => e.toEntity()).toList() ?? [],
    );
  }
}

extension CustomerMapper on CustomerModel {
  CustomerEntity toEntity() {
    return CustomerEntity(
      id: id ?? 0,
      number: number ?? 0,
      name: name ?? '',
      phone: phone ?? '',
    );
  }
}

extension ProductPriceMapper on ProductPriceModel {
  ProductPriceEntity toEntity() {
    return ProductPriceEntity(
      product: product?.toEntity() ?? const ProductEntity(),
      productDailyprice:
          productDailyprice?.toEntity() ?? const ProductDailyPriceEntity(),
    );
  }
}

extension ProductDailyPriceMapper on ProductDailyPriceModel {
  ProductDailyPriceEntity toEntity() {
    return ProductDailyPriceEntity(
      id: id ?? 0,
      productId: productId ?? 0,
      price: price.toString(),
    );
  }
}

extension TotalTransactionMapper on ProductDailyTotalModel {
  ProductDailyTotalEntity toEntity() {
    return ProductDailyTotalEntity(
      productId: productId ?? 0,
      totalWeight: totalWeight.toString(),
      totalAmount: totalAmount.toString(),
    );
  }
}

extension ProductReturnMapper on ProductReturnModel {
  ProductReturnEntity toEntity() {
    return ProductReturnEntity(
      product: product?.toEntity() ?? const ProductEntity(),
      totalWeight: totalWeight.toString(),
    );
  }
}

extension ProductMapper on ProductModel {
  ProductEntity toEntity() {
    return ProductEntity(id: id ?? 0, name: name ?? '');
  }
}

extension ProductOrdersMapper on ProductOrderModel {
  DailyProductOrderEntity toEntity() {
    return DailyProductOrderEntity(
      productId: productId ?? 0,
      totalCount: totalCount ?? 0,
    );
  }
}
