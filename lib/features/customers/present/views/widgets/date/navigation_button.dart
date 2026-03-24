import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../blocs/bloc/customers_bloc.dart';

class NavigationNextButton extends StatelessWidget {
  const NavigationNextButton({
    super.key,
    required this.context,
    required this.state,
    required this.icon,
  });

  final BuildContext context;
  final CustomersState state;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    final targetDate =
        state
            .mapOrNull(
              loaded: (s) {
                return s.selectedDate;
              },
            )
            ?.add(const Duration(days: 1)) ??
        DateTime.now();
    final dayName = DateFormat('EEEE', 'ar').format(targetDate);
    final bool isFuture =
        targetDate.isAfter(DateTime.now()) &&
        !DateUtils.isSameDay(targetDate, DateTime.now());
    if (isFuture) {
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.blue, size: 50.r),
            Text(
              dayName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationPreviousButton extends StatelessWidget {
  const NavigationPreviousButton({
    super.key,
    required this.context,
    required this.state,
    required this.icon,
  });

  final BuildContext context;
  final CustomersState state;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final targetDate =
        state
            .mapOrNull(
              loaded: (s) {
                return s.selectedDate;
              },
            )
            ?.subtract(const Duration(days: 1)) ??
        DateTime.now();
    final dayName = DateFormat('EEEE', 'ar').format(targetDate);
    final bool passed = targetDate.isBefore(DateTime(2026, 3, 13));
    if (passed) {
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              dayName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
                color: Colors.blue,
              ),
            ),
            Icon(icon, color: Colors.blue, size: 50.r),
          ],
        ),
      ),
    );
  }
}
