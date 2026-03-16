import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../daily_transactions/domain/entities/daily_transaction_entity.dart';
import '../types/update_transaction_details_dialog.dart';

class TransactionSectionWidget extends StatelessWidget {
  const TransactionSectionWidget({
    super.key,
    required this.transaction,
    required this.index,
  });
  final DailyTransactionEntity transaction;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        UpdateTransactionDetailsDialog.show(
          context: context,
          transactionDetail:
              transaction.details?[0] ?? const TransactionDetailEntity(),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.h),
        padding: EdgeInsets.all(8.h),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('#${index + 1}', style: TextStyle(fontSize: 12.sp)),
                    if (transaction.createdAt != null) ...[
                      SizedBox(height: 2.h),
                      Text(
                        transaction.createdAt!,
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
            if (transaction.details != null &&
                transaction.details!.isNotEmpty) ...[
              SizedBox(height: 4.h),
              ...transaction.details!.map((transactionDetail) {
                return TransactionDetailRowWidget(
                  transactionDetail: transactionDetail,
                );
              }),
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '${transaction.totalAmount ?? 0}',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[700],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionDetailRowWidget extends StatelessWidget {
  final TransactionDetailEntity transactionDetail;
  const TransactionDetailRowWidget({
    super.key,
    required this.transactionDetail,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              transactionDetail.product?.name ?? 'منتج غير معروف',
              style: TextStyle(fontSize: 11.sp),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Row(
            children: [
              Text(
                '${transactionDetail.weight ?? '0'} × ${transactionDetail.priceAtTime ?? '0'}',
                style: TextStyle(fontSize: 11.sp),
              ),
              SizedBox(width: 8.w),
              Text(
                '${transactionDetail.total ?? 0} ',
                style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
