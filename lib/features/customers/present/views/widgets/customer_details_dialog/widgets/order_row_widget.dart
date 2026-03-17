import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../daily_orders/domain/entities/daily_product_order_entity.dart';

class OrderRowWidget extends StatelessWidget {

  const OrderRowWidget({
    super.key,
    required this.order,
  });
  final DailyProductOrderEntity order;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('طلب #${order.productId}', style: TextStyle(fontSize: 12.sp)),
          Text(
            '${order.totalCount ?? 0} قطعة',
            style: TextStyle(fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}
