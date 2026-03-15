import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' hide DeviceType;
import 'package:shorebird_code_push/shorebird_code_push.dart';
import '../../../../core/di/dependency_injection.dart';
import '../bloc/customers_bloc.dart';
import 'widgets/prices_widget.dart';
import 'widgets/data_grid/daily_customer_reports_data_source.dart';
import 'widgets/date_header_widget.dart';
import 'widgets/data_grid/customers_data_grid_widget.dart';
import 'package:package_info_plus/package_info_plus.dart';

class CustomersView extends StatefulWidget {
  const CustomersView({super.key});
  static const String routeName = 'customers';
  @override
  State<CustomersView> createState() => _CustomersViewState();
}

class _CustomersViewState extends State<CustomersView> {
  late DailyCustomerReportsDataSource _employeeDataSource;
  final updater = ShorebirdUpdater();
  @override
  void initState() {
    super.initState();
    getIt<CustomersBloc>().add(
      CustomersEvent.getCustomers(date: DateTime.now()),
    );
    updater.readCurrentPatch().then(
      (currentPatch) =>
          print('The current patch number is: ${currentPatch?.number}'),
    );
  }

  Future<String> getVersion() async {
    return (await PackageInfo.fromPlatform()).version;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CustomersBloc, CustomersState>(
        builder: (context, state) {
          final isDesktop = _isDesktop(context);
          final customers =
              state.mapOrNull(
                loaded: (s) => s.customersRes.customerDailyReports ?? [],
              ) ??
              [];
          final prices =
              state.mapOrNull(
                loaded: (s) => s.customersRes.productDailyPrices ?? [],
              ) ??
              [];
          _employeeDataSource = DailyCustomerReportsDataSource(
            customers: customers,
            isDesktop: isDesktop,
          ).copyWith(customers: customers, isDesktop: isDesktop);
          return Container(
            margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
            child: Column(
              spacing: 5.h,
              children: [
                FutureBuilder<String>(
                  future: getVersion(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(
                        snapshot.data!,
                        style: TextStyle(fontSize: 10.sp, color: Colors.black),
                      );
                    } else if (snapshot.hasError) {
                      return Text(
                        'Error loading version',
                        style: TextStyle(fontSize: 10.sp, color: Colors.red),
                      );
                    }
                    return Text(
                      'Loading...',
                      style: TextStyle(fontSize: 10.sp, color: Colors.grey),
                    );
                  },
                ),
                DateHeaderWidget(state: state),
                PricesWidget(
                  prices: prices,
                  selectedDate:
                      state.mapOrNull(loaded: (s) => s.selectedDate) ??
                      DateTime.now(),
                  canInsertPreviusDayData:
                      state.mapOrNull(
                        loaded: (s) => s.customersRes.canInsertPreviusDayData,
                      ) ??
                      false,
                ),
                CustomersDataGridWidget(
                  state: state,
                  employeeDataSource: _employeeDataSource,
                  canInsertPreviusDayData:
                      state.mapOrNull(
                        loaded: (s) => s.customersRes.canInsertPreviusDayData,
                      ) ??
                      false,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  bool _isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;
}
