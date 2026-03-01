class CustomersResEntity {
  CustomersResEntity({this.productDailyPrices, this.customerDailyReports});
  final List<ProductPriceEntity>? productDailyPrices;
  final List<CustomerDailyReportEntity>? customerDailyReports;
  CustomersResEntity copyWith({
    List<ProductPriceEntity>? productDailyPrices,
    List<CustomerDailyReportEntity>? customerDailyReports,
  }) {
    return CustomersResEntity(
      productDailyPrices: productDailyPrices ?? this.productDailyPrices,
      customerDailyReports: customerDailyReports ?? this.customerDailyReports,
    );
  }
}

class CustomerDailyReportEntity {
  final int? id;
  final CustomerEntity? customer;
  final int? yesterdayClosedBalance;
  final List<ProductDailyTotalEntity>? productDailyTotals;
  final List<CollectionEntity>? collections;
  final int? closingBalance;
  final List<ProductOrderEntity>? productOrders;

  CustomerDailyReportEntity({
    this.id,
    this.customer,
    this.yesterdayClosedBalance,
    this.productDailyTotals,
    this.collections,
    this.closingBalance,
    this.productOrders,
  });
  CustomerDailyReportEntity copyWith({
    int? id,
    CustomerEntity? customer,
    int? yesterdayClosedBalance,
    List<ProductDailyTotalEntity>? totalTransactions,
    List<CollectionEntity>? collections,
    int? closingBalance,
    List<ProductOrderEntity>? productOrders,
  }) => CustomerDailyReportEntity(
    id: id ?? this.id,
    customer: customer ?? this.customer,
    productDailyTotals: totalTransactions ?? productDailyTotals,
    collections: collections ?? this.collections,
    yesterdayClosedBalance:
        yesterdayClosedBalance ?? this.yesterdayClosedBalance,
    closingBalance: closingBalance ?? this.closingBalance,
    productOrders: productOrders ?? this.productOrders,
  );
}

class ProductOrderEntity {
  final int? productId;
  final int? totalCount;
  ProductOrderEntity({this.productId, this.totalCount});
  Map<String, dynamic> toJson() {
    return {'product_id': productId, 'total_count': totalCount};
  }
}

class CustomerEntity {
  final int? id;
  final int? number;
  final String? name;
  final String? phone;
  CustomerEntity({this.id, this.number, this.name, this.phone});
  Map<String, dynamic> toJson() {
    return {'id': id, 'number': number, 'name': name, 'phone': phone};
  }
}

class ProductPriceEntity {
  final int? id;
  final int? productId;
  final String? productName;
  final String? price;
  ProductPriceEntity({this.id, this.productId, this.productName, this.price});
  ProductPriceEntity copyWith({
    int? id,
    int? productId,
    String? productName,
    String? price,
  }) => ProductPriceEntity(
    id: id ?? this.id,
    productId: productId ?? this.productId,
    productName: productName ?? this.productName,
    price: price ?? this.price,
  );
}

class ProductDailyTotalEntity {
  final int? productId;
  final double? totalWeight;
  final int? totalAmount;
  ProductDailyTotalEntity({this.productId, this.totalWeight, this.totalAmount});
  ProductDailyTotalEntity copyWith({
    int? productId,
    double? totalWeight,
    int? totalAmount,
  }) => ProductDailyTotalEntity(
    productId: productId ?? this.productId,
    totalWeight: totalWeight ?? this.totalWeight,
    totalAmount: totalAmount ?? this.totalAmount,
  );
}

class CollectionEntity {
  final int? id;
  final int? amount;
  CollectionEntity({this.id, this.amount});
  CollectionEntity copyWith({int? id, int? amount}) =>
      CollectionEntity(id: id ?? this.id, amount: amount ?? this.amount);
}

extension CustomerEntityToJson on CustomerDailyReportEntity {
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'customer': customer?.toJson(),
      'yesterday_closed_balance': yesterdayClosedBalance,
      'total_product_transactions': productDailyTotals
          ?.map((e) => e.toJson())
          .toList(),
      'collections': collections?.map((e) => e.toJson()).toList(),
      'closed_balance': closingBalance,
    };
  }
}

extension ProductPriceEntityToJson on ProductPriceEntity {
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product_id': productId,
      'product_name': productName,
      'price': price,
    };
  }
}

extension TotalTransactionEntityToJson on ProductDailyTotalEntity {
  Map<String, dynamic> toJson() {
    return {
      'product_id': productId,
      'total_quantity': totalWeight,
      'total_amount': totalAmount,
    };
  }
}

extension CollectionEntityToJson on CollectionEntity {
  Map<String, dynamic> toJson() {
    return {'id': id, 'amount': amount};
  }
}

extension CustomersResEntityToJson on CustomersResEntity {
  Map<String, dynamic> toJson() {
    return {
      'prices': productDailyPrices?.map((e) => e.toJson()).toList(),
      'customers': customerDailyReports?.map((e) => e.toJson()).toList(),
    };
  }
}
