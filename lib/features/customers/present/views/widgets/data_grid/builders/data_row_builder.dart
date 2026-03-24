import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../../../domain/entities/customer_daily_reports_res_entity.dart';
import '../models/grid_columns.dart';

/// Responsible for building data rows from customer entities
class DataRowBuilder {
  /// Builds data grid rows from customer reports based on device type
  static List<DataGridRow> buildRows(
    List<CustomerDailyReportEntity> customers,
    bool isDesktop,
  ) {
    return customers
        .map((customer) => _buildSingleRow(customer, isDesktop))
        .toList();
  }

  /// Builds a single data row for a customer
  static DataGridRow _buildSingleRow(
    CustomerDailyReportEntity customer,
    bool isDesktop,
  ) {
    final cells = isDesktop
        ? GridColumns.buildDesktopCells(customer)
        : GridColumns.buildMobileCells(customer);

    return DataGridRow(cells: cells);
  }

  /// Validates and filters customer data before building rows
  static List<CustomerDailyReportEntity> validateAndFilterCustomers(
    List<CustomerDailyReportEntity> customers,
  ) {
    return customers.where((customer) {
      // Basic validation - ensure customer has essential data
      return customer.customer != null;
    }).toList();
  }

  /// Gets row count for pagination or virtual scrolling
  static int getRowCount(List<CustomerDailyReportEntity> customers) {
    return customers.length;
  }

  /// Gets customer entity by row index
  static CustomerDailyReportEntity? getCustomerByIndex(
    List<CustomerDailyReportEntity> customers,
    int index,
  ) {
    if (index < 0 || index >= customers.length) return null;
    return customers[index];
  }
}
