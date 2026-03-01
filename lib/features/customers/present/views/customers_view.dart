import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../domain/entities/customer_entity.dart';
import '../bloc/customers_bloc.dart';
import 'widgets/prices_widget.dart';
import 'widgets/employee_data_source.dart';
import 'widgets/customer_details_dialog/customer_details_dialog.dart';
import 'widgets/navigation_button.dart';

class CustomersView extends StatefulWidget {
  const CustomersView({super.key});
  static const String routeName = 'customers';

  @override
  State<CustomersView> createState() => _CustomersViewState();
}

class _CustomersViewState extends State<CustomersView> {
  late EmployeeDataSource _employeeDataSource;

  @override
  void initState() {
    super.initState();
    _isWebOrDesktop = true;
    getIt<CustomersBloc>().add(
      CustomersEvent.getCustomers(date: DateTime.now()),
    );
  }

  late bool _isWebOrDesktop;
  bool _isLandscapeInMobileView = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CustomersBloc, CustomersState>(
        builder: (context, state) {
          _employeeDataSource =
              EmployeeDataSource(
                customers:
                    state.mapOrNull(
                      loaded: (s) => s.customersRes.customerDailyReports ?? [],
                    ) ??
                    [],
              ).copyWith(
                customers:
                    state.mapOrNull(
                      loaded: (s) => s.customersRes.customerDailyReports ?? [],
                    ) ??
                    [],
              );

          return Container(
            margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
            child: Column(
              spacing: 5.h,
              children: [
                _buildDateHeader(state),
                PricesWidget(
                  prices:
                      state.mapOrNull(
                        loaded: (s) => s.customersRes.productDailyPrices ?? [],
                      ) ??
                      [],
                ),
                _buildDataGrid(state),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildDateHeader(CustomersState state) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationButton(
            context: context,
            state: state,
            isNext: true,
            icon: Icons.chevron_left,
          ),
          _buildDateSelector(state),
          NavigationButton(
            context: context,
            state: state,
            isNext: false,
            icon: Icons.chevron_right,
          ),
        ],
      ),
    );
  }

  Widget _buildDateSelector(CustomersState state) {
    return GestureDetector(
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate:
              state.mapOrNull(loaded: (s) => s.selectedDate) ?? DateTime.now(),
          firstDate: DateTime(2020),
          lastDate: DateTime.now().add(const Duration(days: 365)),
        );
        if (picked != null) {
          getIt<CustomersBloc>().add(CustomersEvent.getCustomers(date: picked));
        }
      },
      child: BlocSelector<CustomersBloc, CustomersState, DateTime>(
        selector: (state) =>
            state.mapOrNull(loaded: (s) => s.selectedDate) ?? DateTime.now(),
        builder: (context, selectedDate) {
          return Text(
            DateFormat('EEEE M/d MMMM y', 'ar').format(selectedDate),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 6.sp),
          );
        },
      ),
    );
  }

  Widget _buildDataGrid(CustomersState state) {
    return state.maybeMap(
      loaded: (state) => Expanded(
        child: SfDataGrid(
          columnWidthMode: ColumnWidthMode.fill,
          rowHeight: 100,
          source: _employeeDataSource,
          tableSummaryRows: _loadTableSummaryRows(),
          // columnWidthMode: _isWebOrDesktop || _isLandscapeInMobileView
          // ? ColumnWidthMode.fill
          // : ColumnWidthMode.auto,
          columnWidthCalculationRange: ColumnWidthCalculationRange.allRows,
          onCellTap: (details) {
            if (details.rowColumnIndex.rowIndex > 0) {
              final customer = state
                  .customersRes
                  .customerDailyReports?[details.rowColumnIndex.rowIndex - 1];
              if (customer != null) {
                CustomerDetailsDialog.show(
                  context: context,
                  customer: customer.customer ?? CustomerEntity(),
                  index: details.rowColumnIndex.columnIndex,
                );
              }
            }
          },
          columns: _buildColumns(),
        ),
      ),
      orElse: () => Expanded(child: Center(child: CircularProgressIndicator())),
    );
  }

  // Color _tableSummaryBackgroundColor() {
  // final bool isMaterial3 = model.themeData.useMaterial3;
  // final bool isLight =
  //     model.themeData.colorScheme.brightness == Brightness.light;
  // if (isMaterial3) {
  //   return model.themeData.colorScheme.primary.withValues(alpha: 0.08);
  // } else {
  //   return isLight ? const Color(0xFFEBEBEB) : const Color(0xFF3B3B3B);
  // }
  // }

  List<GridTableSummaryRow> _loadTableSummaryRows() {
    final Color color = Colors.green;
    // _tableSummaryBackgroundColor();
    return <GridTableSummaryRow>[
      GridTableSummaryRow(
        color: color,
        title: 'Total Order Count: {count}',
        showSummaryInRow: false,

        columns: <GridSummaryColumn>[
          const GridSummaryColumn(
            name: 'count',
            columnName: 'id',
            summaryType: GridSummaryType.count,
          ),
        ],
        position: GridTableSummaryRowPosition.bottom,
      ),
      // GridTableSummaryRow(
      //   color: color,
      //   showSummaryInRow: false,
      //   columns: <GridSummaryColumn>[
      //     const GridSummaryColumn(
      //       name: 'freight',
      //       columnName: 'freight',
      //       summaryType: GridSummaryType.sum,
      //     ),
      //     const GridSummaryColumn(
      //       name: 'price',
      //       columnName: 'price',
      //       summaryType: GridSummaryType.sum,
      //     ),
      //   ],
      //   position: GridTableSummaryRowPosition.bottom,
      // ),
    ];
  }

  List<GridColumn> _buildColumns() {
    return [
      _GridColumn('الاسم'),
      _GridColumn('الاصل'),
      _GridColumn('تسمين'),
      _GridColumn('امهات'),
      _GridColumn('التحصيل'),
      _GridColumn('الصافي'),
      _GridColumn('طلب ت'),
      _GridColumn('طلب م'),
    ];
  }
}

class _GridColumn extends GridColumn {
  _GridColumn(String name)
    : super(
        columnName: name,
        label: Container(
          padding: EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: Text(name),
        ),
      );
}
