import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_circular_progress.dart';
import '../../bloc/customers_bloc.dart';
import 'statement_data_grid_widget.dart';
import 'statement_data_source.dart';
import 'widgets/error_state_widget.dart';
import 'widgets/floating_action_buttons.dart';
import 'widgets/professional_header.dart';

class CustomerStatementExcelPage extends StatefulWidget {
  const CustomerStatementExcelPage({
    super.key,
    required this.customerId,
    required this.customerName,
  });
  final int customerId;
  final String customerName;
  static const String routeName = 'customer-statement-excel';
  @override
  State<CustomerStatementExcelPage> createState() =>
      _CustomerStatementExcelPageState();
}

class _CustomerStatementExcelPageState
    extends State<CustomerStatementExcelPage> {
  @override
  void initState() {
    super.initState();
    getIt<CustomersBloc>().add(
      CustomersEvent.getCustomerStatement(
        customerId: widget.customerId,
        days: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            ProfessionalHeader(
              customerName: widget.customerName,
              onBackPressed: () => Navigator.pop(context),
            ),
            BlocConsumer<CustomersBloc, CustomersState>(
              listener: (context, state) {},
              builder: (context, state) {
                return state.maybeMap(
                  loaded: (loadedState) {
                    return StatementDataGridWidget(
                      state: loadedState,
                      statementDataSource: StatementDataSource(
                        customerDailyReports:
                            loadedState.customerStatement?.data ?? [],
                      ),
                    );
                  },
                  loading: (_) {
                    return const Center(child: CustomCircularProgress());
                  },
                  failure: (failure) {
                    return ErrorStateWidget(error: failure.apiErrorModel);
                  },
                  orElse: () {
                    return const Center(child: CustomCircularProgress());
                  },
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButtons(
        onShare: _shareStatement,
        onPrint: _printStatement,
      ),
    );
  }

  void _printStatement() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(Icons.print, color: Colors.white, size: 24.sp),
            SizedBox(width: 12.w),
            Text(
              'جاري تجهيز الطباعة...',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: Colors.blue[700],
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _shareStatement() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(Icons.share, color: Colors.white, size: 24.sp),
            SizedBox(width: 12.w),
            Text(
              'جاري تجهيز المشاركة...',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: Colors.green[600],
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
