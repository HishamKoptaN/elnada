import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../../../domain/entities/customer_daily_reports_res_entity.dart';

/// Defines all column configurations for the daily reports data grid
class GridColumns {
  static const String customerNumber = 'رقم';
  static const String customerName = 'الاسم';
  static const String originalBalance = 'الاصل';
  static const String fattening = 'تسمين';
  static const String fatteningReturns = 'راجع تسمين';
  static const String mothers = 'امهات';
  static const String mothersReturns = 'راجع امهات';
  static const String collections = 'التحصيل';
  static const String netBalance = 'الصافي';
  static const String fatteningOrders = 'طلب ت';
  static const String mothersOrders = 'طلب م';
  static const String fatteningPriceDiff = 'فرق سعر ت';
  static const String mothersPriceDiff = 'فرق سعر م';

  /// Returns all column definitions for desktop view
  static List<DataGridCell<dynamic>> buildDesktopCells(
    CustomerDailyReportEntity customer,
  ) {
    return [
      DataGridCell<String>(
        columnName: customerNumber,
        value: customer.customer?.number ?? '',
      ),
      DataGridCell<String>(
        columnName: customerName,
        value: customer.customer?.name ?? '',
      ),
      DataGridCell<num>(
        columnName: originalBalance,
        value: num.tryParse(customer.yesterdayClosedBalance ?? '') ?? 0,
      ),
      DataGridCell<num>(
        columnName: fattening,
        value: _calculateProductTotal(
          customer.productDailyTotals,
          productId: 1,
        ),
      ),
      DataGridCell<num>(
        columnName: fatteningReturns,
        value: _calculateReturnTotal(customer.returns, productId: 1),
      ),
      DataGridCell<num>(
        columnName: mothers,
        value: _calculateProductTotal(
          customer.productDailyTotals,
          productId: 2,
        ),
      ),
      DataGridCell<num>(
        columnName: mothersReturns,
        value: _calculateReturnTotal(customer.returns, productId: 2),
      ),
      DataGridCell<num>(
        columnName: collections,
        value: num.tryParse(customer.totalCollections ?? '0') ?? 0,
      ),
      DataGridCell<num>(
        columnName: netBalance,
        value: num.tryParse(customer.closingBalance ?? '0') ?? 0,
      ),
      DataGridCell<num>(
        columnName: fatteningOrders,
        value: _calculateOrderTotal(customer.productOrders, productId: 1),
      ),
      DataGridCell<num>(
        columnName: mothersOrders,
        value: _calculateOrderTotal(customer.productOrders, productId: 2),
      ),
      DataGridCell<String>(
        columnName: fatteningPriceDiff,
        value: _calculatePriceDiscount(customer.priceDiscounts, productId: 1),
      ),
      DataGridCell<String>(
        columnName: mothersPriceDiff,
        value: _calculatePriceDiscount(customer.priceDiscounts, productId: 2),
      ),
    ];
  }

  /// Returns column definitions for mobile view (excludes some desktop-only columns)
  static List<DataGridCell<dynamic>> buildMobileCells(
    CustomerDailyReportEntity customer,
  ) {
    return [
      DataGridCell<String>(
        columnName: customerNumber,
        value: customer.customer?.number ?? '',
      ),
      DataGridCell<String>(
        columnName: customerName,
        value: customer.customer?.name ?? '',
      ),
      DataGridCell<num>(
        columnName: originalBalance,
        value: num.tryParse(customer.yesterdayClosedBalance ?? '') ?? 0,
      ),
      DataGridCell<num>(
        columnName: fatteningReturns,
        value: _calculateReturnTotal(customer.returns, productId: 1),
      ),
      DataGridCell<num>(
        columnName: mothersReturns,
        value: _calculateReturnTotal(customer.returns, productId: 2),
      ),
      DataGridCell<num>(
        columnName: collections,
        value: num.tryParse(customer.totalCollections ?? '0') ?? 0,
      ),
      DataGridCell<num>(
        columnName: netBalance,
        value: num.tryParse(customer.closingBalance ?? '0') ?? 0,
      ),
      DataGridCell<num>(
        columnName: fatteningOrders,
        value: _calculateOrderTotal(customer.productOrders, productId: 1),
      ),
      DataGridCell<num>(
        columnName: mothersOrders,
        value: _calculateOrderTotal(customer.productOrders, productId: 2),
      ),
      DataGridCell<String>(
        columnName: fatteningPriceDiff,
        value: _calculatePriceDiscount(customer.priceDiscounts, productId: 1),
      ),
      DataGridCell<String>(
        columnName: mothersPriceDiff,
        value: _calculatePriceDiscount(customer.priceDiscounts, productId: 2),
      ),
    ];
  }

  /// Helper method to calculate product daily totals
  static num _calculateProductTotal(
    productDailyTotals, {
    required int productId,
  }) {
    if (productDailyTotals == null) return 0;

    final totals = productDailyTotals
        .where((t) => t.productId == productId)
        .map((t) => '${t.totalWeight ?? 0}')
        .join('\n');

    return num.tryParse(totals) ?? 0;
  }

  /// Helper method to calculate return totals
  static num _calculateReturnTotal(returns, {required int productId}) {
    if (returns == null) return 0;

    final total = returns
        .where((t) => t.product?.id == productId)
        .map((t) => '${t.totalWeight ?? 0}')
        .join('\n');

    return num.tryParse(total) ?? 0;
  }

  /// Helper method to calculate order totals
  static num _calculateOrderTotal(orders, {required int productId}) {
    if (orders == null) return 0;

    final total = orders
        .where((t) => t.productId == productId)
        .map((t) => '${t.totalCount ?? 0}')
        .join('\n');

    return num.tryParse(total) ?? 0;
  }

  /// Helper method to calculate price discounts
  static String _calculatePriceDiscount(
    priceDiscounts, {
    required int productId,
  }) {
    if (priceDiscounts == null) return '';

    return priceDiscounts
        .where((t) => t.product?.id == productId)
        .map((t) => '${t.discountValue ?? 0}')
        .join('\n');
  }
}
