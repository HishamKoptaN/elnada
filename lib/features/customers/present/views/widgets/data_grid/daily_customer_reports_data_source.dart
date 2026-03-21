import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../../domain/entities/customer_daily_reports_res_entity.dart';

class DailyCustomerReportsDataSource extends DataGridSource {
  DailyCustomerReportsDataSource({
    required List<CustomerDailyReportEntity> customers,
    required bool isDesktop,
  }) {
    _buildData(customers, isDesktop);
  }
  List<DataGridRow> _customerData = [];
  @override
  List<DataGridRow> get rows => _customerData;
  void _buildData(List<CustomerDailyReportEntity> customers, bool isDesktop) {
    _customerData = customers.map((e) {
      return DataGridRow(
        cells: [
          DataGridCell<String>(
            columnName: 'رقم',
            value: e.customer?.number ?? '',
          ),
          DataGridCell<String>(
            columnName: 'الاسم',
            value: e.customer?.name ?? '',
          ),
          DataGridCell<String>(
            columnName: 'الاصل',
            value: e.yesterdayClosedBalance ?? '',
          ),
          if (isDesktop)
            DataGridCell<String>(
              columnName: 'تسمين',
              value:
                  e.productDailyTotals
                      ?.where((t) => t.productId == 1)
                      .map((t) => '${t.totalWeight ?? 0}')
                      .join('\n') ??
                  '',
            ),
          DataGridCell<String>(
            columnName: 'راجع ت',
            value:
                e.returns
                    ?.where((t) => t.product?.id == 1)
                    .map((t) => '${t.totalWeight ?? 0}')
                    .join('\n') ??
                '',
          ),
          if (isDesktop)
            DataGridCell<String>(
              columnName: 'امهات',
              value:
                  e.productDailyTotals
                      ?.where((t) => t.productId == 2)
                      .map((t) => '${t.totalWeight ?? 0}')
                      .join('\n') ??
                  '',
            ),
          DataGridCell<String>(
            columnName: 'راجع م',
            value:
                e.returns
                    ?.where((t) => t.product?.id == 2)
                    .map((t) => '${t.totalWeight ?? 0}')
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
                    .map((t) => '${t.totalCount ?? 0}')
                    .join('\n') ??
                '',
          ),
          DataGridCell<String>(
            columnName: 'طلب م',
            value:
                e.productOrders
                    ?.where((t) => t.productId == 2)
                    .map((t) => '${t.totalCount ?? 0}')
                    .join('\n') ??
                '',
          ),
          DataGridCell<String>(
            columnName: 'فرق سعر ت',
            value:
                e.priceDiscounts
                    ?.where((t) => t.product?.id == 1)
                    .map((t) => '${t.discountValue ?? 0}')
                    .join('\n') ??
                '',
          ),
          DataGridCell<String>(
            columnName: 'فرق سعر م',
            value:
                e.priceDiscounts
                    ?.where((t) => t.product?.id == 2)
                    .map((t) => '${t.discountValue ?? 0}')
                    .join('\n') ??
                '',
          ),
        ],
      );
    }).toList();
  }

  void updateData({
    required List<CustomerDailyReportEntity> customers,
    required bool isDesktop,
  }) {
    _buildData(customers, isDesktop);
    notifyListeners();
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
            case 'راجع ت':
            case 'راجع م':
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
