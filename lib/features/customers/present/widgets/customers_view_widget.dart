import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../../core/di/dependency_injection.dart';
import '../blocs/bloc/customers_bloc.dart';
import '../views/widgets/data_grid/customers_data_grid_widget.dart';
import '../views/widgets/data_grid/daily_customer_reports_data_source.dart';
import '../views/widgets/date/date_header_widget.dart';
import '../views/widgets/prices_widget.dart';

class CustomersViewWidget extends StatelessWidget {
  const CustomersViewWidget({super.key});

  bool _isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > 600;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomersBloc, CustomersState>(
      builder: (context, state) {
        final isDesktop = _isDesktop(context);

        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded:
              (
                selectedDate,
                customersRes,
                customerDailyReportDetailsRes,
                customerStatement,
                days,
                isEditable,
              ) {
                final dataSource = DailyCustomerReportsDataSource(
                  customers: customersRes.customerDailyReports ?? [],
                  isDesktop: isDesktop,
                );

                return Column(
                  children: [
                    DateHeaderWidget(state: state),
                    PricesWidget(
                      prices: customersRes.productDailyPrices ?? [],
                      selectedDate: selectedDate,
                      canInsertPreviusDayData: isEditable,
                    ),
                    Expanded(
                      child: CustomersDataGridWidget(
                        key: GlobalKey<SfDataGridState>(),
                        state: state,
                        canInsertPreviusDayData: isEditable,
                        employeeDataSource: dataSource,
                      ),
                    ),
                  ],
                );
              },
          failure: (apiErrorModel) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'حدث خطأ: ${apiErrorModel.message}',
                  style: TextStyle(fontSize: 16.sp),
                ),
                SizedBox(height: 16.h),
                ElevatedButton(
                  onPressed: () {
                    getIt<CustomersBloc>().add(
                      CustomersEvent.getCustomers(date: DateTime.now()),
                    );
                  },
                  child: const Text('إعادة المحاولة'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
