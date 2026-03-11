import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../../domain/entities/customer_daily_reports_res_entity.dart';

class DailyCustomerReportsDataSource extends DataGridSource {
  DailyCustomerReportsDataSource({
    required this.customers,
    required this.isDesktop,
  });
  final List<CustomerDailyReportEntity> customers;
  final bool isDesktop;
  @override
  List<DataGridRow> get rows => _customerData;
  List<DataGridRow> _customerData = [];
  DailyCustomerReportsDataSource copyWith({
    required List<CustomerDailyReportEntity> customers,
    required bool isDesktop,
  }) {
    _customerData = customers
        .map(
          (e) => DataGridRow(
            cells: [
              DataGridCell<String>(
                columnName: 'الاسم',
                value: e.customer?.name ?? '',
              ),
              DataGridCell<String>(
                columnName: 'الاصل',
                value: e.yesterdayClosedBalance ?? '',
              ),
              if (isDesktop) ...[
                DataGridCell<String>(
                  columnName: 'تسمين',
                  value:
                      e.productDailyTotals
                          ?.where((t) => t.productId == 1)
                          .map((t) => '${t.totalWeight ?? 0} ')
                          .join('\n') ??
                      '',
                ),
              ],
              DataGridCell<String>(
                columnName: 'مرتجع تسمين',
                value:
                    e.returns
                        ?.where((t) => t.product?.id == 1)
                        .map((t) => '${t.totalWeight ?? 0} ')
                        .join('\n') ??
                    '',
              ),
              if (isDesktop) ...[
                DataGridCell<String>(
                  columnName: 'امهات',
                  value:
                      e.productDailyTotals
                          ?.where((t) => t.productId == 2)
                          .map((t) => '${t.totalWeight ?? 0} ')
                          .join('\n') ??
                      '',
                ),
              ],
              DataGridCell<String>(
                columnName: 'مرتجع امهات',
                value:
                    e.returns
                        ?.where((t) => t.product?.id == 2)
                        .map((t) => '${t.totalWeight ?? 0} ')
                        .join('\n') ??
                    '',
              ),
              DataGridCell<String>(
                columnName: 'التحصيل',
                value: e.totalCollections ?? '',
              ),
              DataGridCell<String>(
                columnName: 'الصافي',
                value: e.closingBalance?.toString() ?? '',
              ),
              DataGridCell<String>(
                columnName: 'طلب ت',
                value:
                    e.productOrders
                        ?.where((t) => t.productId == 1)
                        .map((t) => '${t.totalCount ?? 0} ')
                        .join('\n') ??
                    '',
              ),
              DataGridCell<String>(
                columnName: 'طلب م',
                value:
                    e.productOrders
                        ?.where((t) => t.productId == 2)
                        .map((t) => '${t.totalCount ?? 0} ')
                        .join('\n') ??
                    '',
              ),
            ],
          ),
        )
        .toList();
    return this;
  }

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((e) {
        Color getTextColor() {
          switch (e.columnName) {
            case 'الاصل':
              return Colors.grey[700]!;
            case 'تسمين':
            case 'امهات':
              return Colors.orange[900]!;
            case 'مرتجع تسمين':
            case 'مرتجع امهات':
              return Colors.red[600]!;
            case 'التحصيل':
              return Colors.green[700]!;
            case 'الصافي':
              return Colors.red[900]!;
            case 'طلب ت':
            case 'طلب م':
              return Colors.blue[700]!;
            default:
              return Colors.black;
          }
        }

        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Text(
            e.value.toString(),
            style: TextStyle(fontSize: 18.sp, color: getTextColor()),
          ),
        );
      }).toList(),
    );
  }
}
