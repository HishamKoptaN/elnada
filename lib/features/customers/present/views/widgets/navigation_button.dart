import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:taha/features/customers/present/bloc/customers_bloc.dart';

import '../../../../../core/di/dependency_injection.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    super.key,
    required this.context,
    required this.state,
    required this.isNext,
    required this.icon,
  });

  final BuildContext context;
  final CustomersState state;
  final bool isNext;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final currentDate =
        state.mapOrNull(loaded: (s) => s.selectedDate) ?? DateTime.now();
    final targetDate = isNext
        ? currentDate.add(const Duration(days: 1))
        : currentDate.subtract(const Duration(days: 1));
    final dayName = DateFormat('EEEE', 'ar').format(targetDate);
    final bool isFuture =
        targetDate.isAfter(DateTime.now()) &&
        !DateUtils.isSameDay(targetDate, DateTime.now());

    if (isNext && isFuture) {
      return SizedBox(width: 50.w);
    }

    return InkWell(
      onTap: () {
        getIt<CustomersBloc>().add(
          CustomersEvent.getCustomers(date: targetDate),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Row(
          mainAxisAlignment: isNext ? .start : .end,
          children: [
            isNext ? Icon(icon, color: Colors.blue, size: 50.r) : SizedBox(),
            Text(
              dayName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 6.sp,
                color: Colors.blue,
              ),
            ),
            !isNext ? Icon(icon, color: Colors.blue, size: 50.r) : SizedBox(),
          ],
        ),
      ),
    );
  }
}
