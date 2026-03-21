import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_circular_progress.dart';
import '../../blocs/bloc/customers_bloc.dart';
import 'widgets/customer_statement_header.dart';
import '../widgets/date/period_selector.dart';

class CustomerStatementPage extends StatefulWidget {
  const CustomerStatementPage({
    super.key,
    required this.customerId,
    required this.customerName,
  });
  final int customerId;
  final String customerName;
  static const String routeName = 'customer-statement';

  @override
  State<CustomerStatementPage> createState() => _CustomerStatementPageState();
}

class _CustomerStatementPageState extends State<CustomerStatementPage> {
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

  void _printStatement() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('سيتم إضافة الطباعة قريباً'),
        backgroundColor: Colors.blue[700],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomerStatementHeader(
                customerName: widget.customerName,
                onPrint: () {},
                onShare: () {},
              ),
              BlocConsumer<CustomersBloc, CustomersState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state.maybeMap(
                    loaded: (loadedState) {
                      return Column(
                        children: [
                          SizedBox(height: 16.h),
                          PeriodSelector(
                            period: 'آخر 10 أيام',
                            onChange: () {},
                          ),
                          SizedBox(height: 16.h),
                          SizedBox(height: 16.h),
                        ],
                      );
                    },
                    loading: (_) {
                      return const CustomCircularProgress();
                    },
                    failure: (failure) {
                      return Center(
                        child: Text('Error: ${failure.apiErrorModel.message}'),
                      );
                    },
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _printStatement();
        },
        backgroundColor: Colors.blue[700],
        icon: Icon(Icons.print, color: Colors.white, size: 24.sp),
        label: Text(
          'طباعة',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
