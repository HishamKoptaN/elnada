import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../../../../core/utils/devices_utiles.dart' as devices;
import '../../../../../../core/widgets/custom_circular_progress.dart';
import '../../../blocs/bloc/customers_bloc.dart';
import 'customer_details_dialog.dart';
import 'daily_customer_reports_data_source.dart';

class CustomersDataGridWidget extends StatelessWidget {
  CustomersDataGridWidget({
    super.key,
    required this.state,
    required this.employeeDataSource,
    required this.canInsertPreviusDayData,
  });
  final CustomersState state;
  final DailyCustomerReportsDataSource employeeDataSource;
  final bool canInsertPreviusDayData;
  final DataGridController _dataGridController = DataGridController();

  @override
  Widget build(BuildContext context) {
    final bool isDesktop =
        devices.DevicesUtils.getDeviceType(
          width: MediaQuery.of(context).size.width,
        ) ==
        devices.DeviceType.desktop;
    return state.maybeMap(
      loaded: (state) {
        return Expanded(
          child: KeyboardListener(
            autofocus: true,
            focusNode: FocusNode(),
            onKeyEvent: (KeyEvent event) {
              if (event is KeyDownEvent &&
                  event.logicalKey == LogicalKeyboardKey.enter) {
                final RowColumnIndex currentCell =
                    _dataGridController.currentCell;
                if (currentCell.rowIndex > 0) {
                  final details = DataGridCellTapDetails(
                    rowColumnIndex: currentCell,
                    column: _buildColumns(
                      isDesktop: isDesktop,
                    )[currentCell.columnIndex],
                    kind: PointerDeviceKind.unknown,
                    globalPosition: Offset.zero,
                    localPosition: Offset.zero,
                  );
                  _handleCellTap(
                    details: details,
                    state: state,
                    selectedDate: state.selectedDate,
                    isDesktop: isDesktop,
                    context: context,
                    canInsertPreviusDayData: canInsertPreviusDayData,
                  );
                }
              }
            },
            child: SfDataGrid(
              controller: _dataGridController,
              frozenColumnsCount: 1,
              headerRowHeight: 55.h,
              columnWidthMode: ColumnWidthMode.fill,
              navigationMode: GridNavigationMode.cell,
              selectionMode: SelectionMode.single,
              rowHeight: 70.h,
              source: employeeDataSource,
              columnWidthCalculationRange: ColumnWidthCalculationRange.allRows,
              onCurrentCellActivated:
                  (currentRowColumnIndex, prevRowColumnIndex) {
                    debugPrint(
                      'الخلية الحالية: ${currentRowColumnIndex.rowIndex}',
                    );
                  },
              onCellTap: (details) {
                _handleCellTap(
                  details: details,
                  state: state,
                  selectedDate: state.selectedDate,
                  isDesktop: isDesktop,
                  context: context,
                  canInsertPreviusDayData: canInsertPreviusDayData,
                );
              },
              columns: _buildColumns(isDesktop: isDesktop),
              tableSummaryRows: [
                GridTableSummaryRow(
                  showSummaryInRow: false,
                  position: GridTableSummaryRowPosition.bottom,
                  columns: [
                    const GridSummaryColumn(
                      name: 'الاصل',
                      columnName: 'الاصل',
                      summaryType: GridSummaryType.sum,
                    ),
                    if (isDesktop) ...[
                      const GridSummaryColumn(
                        name: 'تسمين',
                        columnName: 'تسمين',
                        summaryType: GridSummaryType.sum,
                      ),
                      const GridSummaryColumn(
                        name: 'امهات',
                        columnName: 'امهات',
                        summaryType: GridSummaryType.sum,
                      ),
                    ],
                    const GridSummaryColumn(
                      name: 'راجع تسمين',
                      columnName: 'راجع تسمين',
                      summaryType: GridSummaryType.sum,
                    ),
                    const GridSummaryColumn(
                      name: 'راجع امهات',
                      columnName: 'مرراجعتجع امهات',
                      summaryType: GridSummaryType.sum,
                    ),
                    const GridSummaryColumn(
                      name: 'التحصيل',
                      columnName: 'التحصيل',
                      summaryType: GridSummaryType.sum,
                    ),
                    const GridSummaryColumn(
                      name: 'الصافي',
                      columnName: 'الصافي',
                      summaryType: GridSummaryType.sum,
                    ),
                    const GridSummaryColumn(
                      name: 'طلب ت',
                      columnName: 'طلب ت',
                      summaryType: GridSummaryType.sum,
                    ),
                    const GridSummaryColumn(
                      name: 'طلب م',
                      columnName: 'طلب م',
                      summaryType: GridSummaryType.sum,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      orElse: () =>
          const Expanded(child: Center(child: CustomCircularProgress())),
    );
  }

  void _handleEnterKey(
    BuildContext context,
    int rowIndex,
    bool isDesktop,
    CustomersState state,
  ) {
    final customerDailyReport = state.maybeMap(
      loaded: (loadedState) {
        return loadedState.customersRes.customerDailyReports?[rowIndex];
      },
      orElse: () => null,
    );
    if (customerDailyReport != null) {
      CustomerDetailsDialog.show(
        context: context,
        productDailyPrices: state.maybeMap(
          loaded: (loadedState) {
            return loadedState.customersRes.productDailyPrices ?? [];
          },
          orElse: () {
            return [];
          },
        ),
        customerDailyReport: customerDailyReport,
        selectedDate: state.maybeMap(
          loaded: (s) {
            return s.selectedDate;
          },
          orElse: () {
            return DateTime.now();
          },
        ),
        canInsertPreviusDayData: canInsertPreviusDayData,
        index: 0,
      );
    }
  }

  void _handleCellTap({
    required DataGridCellTapDetails details,
    required CustomersState state,
    required DateTime selectedDate,
    required bool canInsertPreviusDayData,
    required bool isDesktop,
    required BuildContext context,
  }) {
    if (details.rowColumnIndex.rowIndex > 0) {
      final currentColumns = _buildColumns(isDesktop: isDesktop);
      final String clickedColumnName =
          currentColumns[details.rowColumnIndex.columnIndex].columnName;
      final int originalIndex = _masterColumns.indexOf(clickedColumnName);
      final customerReport = state.maybeMap(
        loaded: (loadedState) {
          return loadedState
              .customersRes
              .customerDailyReports?[details.rowColumnIndex.rowIndex - 1];
        },
        orElse: () => null,
      );
      if (customerReport != null) {
        CustomerDetailsDialog.show(
          context: context,
          customerDailyReport: customerReport,
          productDailyPrices: state.maybeMap(
            loaded: (loadedState) {
              return loadedState.customersRes.productDailyPrices ?? [];
            },
            orElse: () {
              return [];
            },
          ),
          selectedDate: selectedDate,
          canInsertPreviusDayData: canInsertPreviusDayData,
          index: originalIndex,
        );
      }
    }
  }

  List<GridColumn> _buildColumns({required bool isDesktop}) {
    return [
      _GridColumn(name: 'رقم', width: 50.w),
      _GridColumn(name: 'الاسم', width: 150.w),
      _GridColumn(name: 'الاصل', width: 150.w),
      if (isDesktop) ...[_GridColumn(name: 'تسمين', width: 125.w)],
      _GridColumn(name: 'راجع تسمين', width: 75.w),
      if (isDesktop) ...[_GridColumn(name: 'امهات', width: 125.w)],
      _GridColumn(name: 'راجع امهات', width: 75.w),
      _GridColumn(name: 'التحصيل', width: 150.w),
      _GridColumn(name: 'الصافي', width: 150.w),
      _GridColumn(name: 'طلب ت', width: 75.w),
      _GridColumn(name: 'طلب م', width: 75.w),
      _GridColumn(name: 'فرق سعر ت', width: 75.w),
      _GridColumn(name: 'فرق سعر م', width: 75.w),
    ];
  }

  static const List<String> _masterColumns = [
    'رقم',
    'الاسم',
    'الاصل',
    'تسمين',
    'راجع تسمين',
    'امهات',
    'راجع امهات',
    'التحصيل',
    'الصافي',
    'طلب ت',
    'طلب م',
    'فرق سعر ت',
    'فرق سعر م',
  ];
}

class _GridColumn extends GridColumn {
  _GridColumn({required String name, double? width})
    : super(
        width: width ?? 100.w,
        columnName: name,
        label: Container(
          width: width,
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: Text(name, style: TextStyle(fontSize: 16.sp)),
        ),
      );
}
