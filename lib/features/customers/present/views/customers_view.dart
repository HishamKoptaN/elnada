import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../../core/di/dependency_injection.dart';
import '../blocs/bloc/customers_bloc.dart';
import '../widgets/customers_view_widget.dart';
import '../widgets/auto_updater_widget.dart';
import '../services/print_service.dart';
import 'widgets/customer_details_dialog/types/create_customer_dialog.dart';
import 'widgets/data_grid/daily_customer_reports_data_source.dart';

class CustomersView extends StatefulWidget {
  const CustomersView({super.key});
  static const String routeName = 'customers';

  @override
  State<CustomersView> createState() => _CustomersViewState();
}

class _CustomersViewState extends State<CustomersView> {
  final GlobalKey<SfDataGridState> _key = GlobalKey<SfDataGridState>();
  late DailyCustomerReportsDataSource _employeeDataSource;

  @override
  void initState() {
    super.initState();
    getIt<CustomersBloc>().add(
      CustomersEvent.getCustomers(date: DateTime.now()),
    );
    _employeeDataSource = DailyCustomerReportsDataSource(
      customers: [],
      isDesktop: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(
        children: [
          if (kDebugMode) AutoUpdaterWidget(),
          Expanded(child: CustomersViewWidget()),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              heroTag: 'print1',
              onPressed: () async {
                await PrintService.printDataGrid(source: _employeeDataSource);
              },
              backgroundColor: Colors.blue,
              child: Icon(Icons.print, size: 24.sp),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              heroTag: 'add_customer',
              onPressed: () async {
                CreateCustomerDialog.show(context: context);
              },
              backgroundColor: Colors.green,
              child: Icon(Icons.person_add, size: 24.sp),
            ),
          ],
        ),
      ),
      // persistentFooterButtons: [
      //   Padding(
      //     padding: const EdgeInsets.all(2.5),
      //     child: MaterialButton(
      //       onPressed: () async {},
      //       color: Colors.green,
      //       child: Row(
      //         mainAxisSize: MainAxisSize.min,
      //         children: [
      //           Icon(Icons.add, size: 20.sp, color: Colors.white),
      //           SizedBox(width: 8.w),
      //           Text(
      //             'زبون جديد',
      //             style: TextStyle(fontSize: 16.sp, color: Colors.white),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ],
    );
  }
}
