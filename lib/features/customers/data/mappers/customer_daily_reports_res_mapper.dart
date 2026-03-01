import '../../domain/entities/customer_entity.dart';
import '../models/customer_daily_reports_res_model.dart';

extension CustomerDailyReportsResMapper on CustomerDailyReportsResModel {
  CustomersResEntity toEntity() {
    return CustomersResEntity(
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
      customer: customer?.toEntity() ?? CustomerEntity(),
      yesterdayClosedBalance: yesterdayClosedBalance ?? 0,
      productDailyTotals:
          productDailyTotals?.map((e) => e.toEntity()).toList() ?? [],
      collections: collections?.map((e) => e.toEntity()).toList() ?? [],
      closingBalance: closingBalance ?? 0,
      productOrders: productOrders?.map((e) => e.toEntity()).toList() ?? [],
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
      id: id ?? 0,
      productId: productId ?? 0,
      productName: productName ?? '',
      price: price.toString(),
    );
  }
}

extension TotalTransactionMapper on ProductDailyTotalModel {
  ProductDailyTotalEntity toEntity() {
    return ProductDailyTotalEntity(
      productId: productId ?? 0,
      totalWeight: totalWeight ?? 0.0,
      totalAmount: totalAmount ?? 0,
    );
  }
}

extension CollectionMapper on CollectionModel {
  CollectionEntity toEntity() {
    return CollectionEntity(id: id ?? 0, amount: amount ?? 0);
  }
}

extension ProductOrdersMapper on ProductOrderModel {
  ProductOrderEntity toEntity() {
    return ProductOrderEntity(
      productId: productId ?? 0,
      totalCount: totalCount ?? 0,
    );
  }
}
