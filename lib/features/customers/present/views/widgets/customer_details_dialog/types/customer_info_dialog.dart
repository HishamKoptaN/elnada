import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../domain/entities/customer_daily_reports_res_entity.dart';
import '../../../../bloc/customers_bloc.dart';
import '../../../cards/customer_statement_page.dart';
import '../widgets/customer_dialog_content_widget.dart';

class CustomerInfoDialog {
  static void show({
    required BuildContext context,
    required CustomerEntity customer,
    required int id,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        getIt<CustomersBloc>().add(
          CustomersEvent.getCustomerDailyReport(id: id),
        );
        return AlertDialog(
          content: SizedBox(
            width: double.maxFinite,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocConsumer<CustomersBloc, CustomersState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state.maybeMap(
                    loaded: (state) {
                      final details = state.customerDailyReportDetailsRes;
                      if (details == null) {
                        return const SizedBox.shrink();
                      }
                      return CustomerDialogContentWidget(
                        customer: customer,
                        details: details,
                      );
                    },
                    orElse: () {
                      return SizedBox.shrink();
                    },
                  );
                },
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CustomerStatementPage(
                      customerId: id,
                      customerName: customer.name ?? 'عميل',
                    ),
                  ),
                );
              },
              child: Text(
                'كشف حساب',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.blue[700],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('إغلاق', style: TextStyle(fontSize: 16.sp)),
            ),
          ],
        );
      },
    );
  }
}
