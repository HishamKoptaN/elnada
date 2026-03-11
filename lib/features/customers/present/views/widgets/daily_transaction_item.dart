import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../daily_transactions/domain/entities/daily_transaction_entity.dart';

class DailyTransactionItem extends StatelessWidget {
  final DailyTransactionEntity transaction;

  const DailyTransactionItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.red[50],
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Colors.red[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(4.w),
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.red[700],
                  size: 16.sp,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  'مشتريات',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[700],
                  ),
                ),
              ),
              Text(
                '${transaction.totalAmount ?? '0'} ريال',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[700],
                ),
              ),
            ],
          ),
          if (transaction.createdAt != null) ...[
            SizedBox(height: 4.h),
            Text(
              'بتاريخ: ${_formatTime(transaction.createdAt!)}',
              style: TextStyle(fontSize: 12.sp, color: Colors.grey[600]),
            ),
          ],
          if (transaction.details != null &&
              transaction.details!.isNotEmpty) ...[
            SizedBox(height: 8.h),
            ...transaction.details!
                .take(3)
                .map(
                  (detail) => Padding(
                    padding: EdgeInsets.only(right: 8.w, bottom: 2.h),
                    child: Row(
                      children: [
                        Text(
                          '• ${detail.product?.name ?? 'منتج'}',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey[700],
                          ),
                        ),
                        if (detail.total != null) ...[
                          Spacer(),
                          Text(
                            '${detail.total} ريال',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
            if (transaction.details!.length > 3)
              Padding(
                padding: EdgeInsets.only(right: 8.w, top: 2.h),
                child: Text(
                  'و ${transaction.details!.length - 3} منتجات أخرى...',
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: Colors.grey[500],
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
          ],
        ],
      ),
    );
  }

  String _formatTime(String dateTime) {
    try {
      final date = DateTime.parse(dateTime);
      return '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
    } catch (e) {
      return dateTime;
    }
  }
}
