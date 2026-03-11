import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../daily_transactions/domain/entities/daily_transaction_entity.dart';

class TransactionDetailRowWidget extends StatelessWidget {
  final TransactionDetailEntity detail;
  const TransactionDetailRowWidget({super.key, required this.detail});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              detail.product?.name ?? 'منتج غير معروف',
              style: TextStyle(fontSize: 11.sp),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Row(
            children: [
              Text(
                '${detail.weight ?? '0'} × ${detail.priceAtTime ?? '0'}',
                style: TextStyle(fontSize: 11.sp),
              ),
              SizedBox(width: 8.w),
              Text(
                '${detail.total ?? 0} ',
                style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TransactionSectionWidget extends StatelessWidget {
  final DailyTransactionEntity transaction;
  final int index;

  const TransactionSectionWidget({
    super.key,
    required this.transaction,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            ...transaction.details!.map(
              (detail) => TransactionDetailRowWidget(detail: detail),
            ),
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
    );
  }
}
