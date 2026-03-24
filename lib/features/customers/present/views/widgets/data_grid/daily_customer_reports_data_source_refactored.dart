import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../../domain/entities/customer_daily_reports_res_entity.dart';
import 'builders/data_row_builder.dart';
import 'models/grid_columns.dart';
import 'renderers/cell_renderer_factory.dart';

/// Refactored data source using Divide and Conquer principles
/// Each responsibility is separated into dedicated classes
class DailyCustomerReportsDataSource extends DataGridSource {
  DailyCustomerReportsDataSource({
    required List<CustomerDailyReportEntity> customers,
    required bool isDesktop,
  }) : _isDesktop = isDesktop {
    _initializeData(customers);
  }

  final bool _isDesktop;
  List<DataGridRow> _customerData = [];
  List<CustomerDailyReportEntity> _customers = [];

  @override
  List<DataGridRow> get rows => _customerData;

  /// Initializes the data source with customer data
  void _initializeData(List<CustomerDailyReportEntity> customers) {
    _customers = DataRowBuilder.validateAndFilterCustomers(customers);
    _customerData = DataRowBuilder.buildRows(_customers, _isDesktop);
  }

  /// Updates the data source with new customer data
  void updateData({
    required List<CustomerDailyReportEntity> customers,
    required bool isDesktop,
  }) {
    _initializeData(customers);
    notifyListeners();
  }

  /// Gets customer entity by row index
  CustomerDailyReportEntity? getCustomerByIndex(int index) {
    return DataRowBuilder.getCustomerByIndex(_customers, index);
  }

  /// Gets the total number of customers
  int get customerCount => _customers.length;

  /// Checks if the current view is desktop
  bool get isDesktop => _isDesktop;

  @override
  Widget? buildTableSummaryCellWidget(
    GridTableSummaryRow summaryRow,
    GridSummaryColumn? summaryColumn,
    RowColumnIndex rowColumnIndex,
    String summaryValue,
  ) {
    return CellRendererFactory.createSummaryCell(summaryValue);
  }

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((cell) {
        return CellRendererFactory.createRegularCell(cell);
      }).toList(),
    );
  }

  /// Refreshes the data source
  void refresh() {
    notifyListeners();
  }

  /// Gets column names for the current view
  List<String> getColumnNames() {
    if (_isDesktop) {
      return [
        GridColumns.customerNumber,
        GridColumns.customerName,
        GridColumns.originalBalance,
        GridColumns.fattening,
        GridColumns.fatteningReturns,
        GridColumns.mothers,
        GridColumns.mothersReturns,
        GridColumns.collections,
        GridColumns.netBalance,
        GridColumns.fatteningOrders,
        GridColumns.mothersOrders,
        GridColumns.fatteningPriceDiff,
        GridColumns.mothersPriceDiff,
      ];
    } else {
      return [
        GridColumns.customerNumber,
        GridColumns.customerName,
        GridColumns.originalBalance,
        GridColumns.fatteningReturns,
        GridColumns.mothersReturns,
        GridColumns.collections,
        GridColumns.netBalance,
        GridColumns.fatteningOrders,
        GridColumns.mothersOrders,
        GridColumns.fatteningPriceDiff,
        GridColumns.mothersPriceDiff,
      ];
    }
  }

  /// Gets display name for a column (can be used for headers)
  String getColumnDisplayName(String columnName) {
    switch (columnName) {
      case GridColumns.customerNumber:
        return 'رقم العميل';
      case GridColumns.customerName:
        return 'اسم العميل';
      case GridColumns.originalBalance:
        return 'الرصيد الأصلي';
      case GridColumns.fattening:
        return 'تسمين';
      case GridColumns.fatteningReturns:
        return 'راجع تسمين';
      case GridColumns.mothers:
        return 'امهات';
      case GridColumns.mothersReturns:
        return 'راجع امهات';
      case GridColumns.collections:
        return 'التحصيل';
      case GridColumns.netBalance:
        return 'الصافي';
      case GridColumns.fatteningOrders:
        return 'طلب تسمين';
      case GridColumns.mothersOrders:
        return 'طلب امهات';
      case GridColumns.fatteningPriceDiff:
        return 'فرق سعر تسمين';
      case GridColumns.mothersPriceDiff:
        return 'فرق سعر امهات';
      default:
        return columnName;
    }
  }
}
