import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../daily_collections/domain/entities/daily_collection_entity.dart';

class CollectionRowWidget extends StatelessWidget {
  final DailyCollectionEntity collection;
  final int index;

  const CollectionRowWidget({
    super.key,
    required this.collection,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('#${index + 1}', style: TextStyle(fontSize: 12.sp)),
              Text(
                '${collection.amount ?? 0}',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          if (collection.createdAt != null) ...[
            SizedBox(height: 2.h),
            Text(
              '${collection.createdAt}',
              style: TextStyle(fontSize: 10.sp, color: Colors.grey[600]),
            ),
          ],
        ],
      ),
    );
  }
}
