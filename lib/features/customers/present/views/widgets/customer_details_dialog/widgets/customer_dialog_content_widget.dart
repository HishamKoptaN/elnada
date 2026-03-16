import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../domain/entities/customer_daily_report_details_res_entity.dart';
import '../../../../../domain/entities/customer_daily_reports_res_entity.dart';
import 'common_widgets.dart';
import 'order_row_widget.dart';
import 'collection_row_widget.dart';
import 'transaction_widgets.dart';

class CustomerDialogContentWidget extends StatelessWidget {
  const CustomerDialogContentWidget({
    super.key,
    required this.customer,
    required this.details,
  });
  final CustomerEntity customer;
  final CustomerDailyReportDetailsResEntity details;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCustomerInfo(),
          SizedBox(height: 16.h),
          const SectionTitleWidget(title: 'الباقي'),
          InfoRowWidget(value: details.yesterdayClosedBalance ?? '0'),
          SizedBox(height: 12.h),
          if (details.orders != null && details.orders!.isNotEmpty) ...[
            const SectionTitleWidget(title: 'الطلبات'),
            ...details.orders!.map((order) => OrderRowWidget(order: order)),
            SizedBox(height: 12.h),
          ],
          if (details.transactions != null &&
              details.transactions!.isNotEmpty) ...[
            const SectionTitleWidget(title: 'البيع'),
            ...details.transactions!.asMap().entries.map(
              (entry) {
                return TransactionSectionWidget(
                transaction: entry.value,
                index: entry.key,
              );
              },
            ),
            SizedBox(height: 12.h),
          ],
          if (details.collections != null &&
              details.collections!.isNotEmpty) ...[
            const SectionTitleWidget(title: 'التحصيل'),
            ...details.collections!.asMap().entries.map(
              (entry) {
                return CollectionRowWidget(
                collection: entry.value,
                index: entry.key,
              );
              },
            ),
            SizedBox(height: 12.h),
          ],
          const SectionTitleWidget(title: 'النهائي'),
          InfoRowWidget(value: details.closingBalance ?? '0'),
        ],
      ),
    );
  }

  Widget _buildCustomerInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          customer.name ?? '',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4.h),
        Text(customer.phone ?? '', style: TextStyle(fontSize: 14.sp)),
      ],
    );
  }
}
