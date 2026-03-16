import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../bloc/customers_bloc.dart';
import 'navigation_button.dart';

class DateHeaderWidget extends StatelessWidget {
  const DateHeaderWidget({super.key, required this.state});

  final CustomersState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationNextButton(
            context: context,
            state: state,
            icon: Icons.chevron_left,
          ),
          DateSelectorWidget(state: state),
          if (state.mapOrNull(loaded: (s) => s.selectedDate) !=
              DateTime(2026, 3, 13))
            NavigationPreviousButton(
              context: context,
              state: state,
              icon: Icons.chevron_right,
            ),
        ],
      ),
    );
  }
}

class DateSelectorWidget extends StatelessWidget {
  const DateSelectorWidget({super.key, required this.state});

  final CustomersState state;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate:
              state.mapOrNull(loaded: (s) => s.selectedDate) ?? DateTime.now(),
          firstDate: DateTime(2026, 3, 3),
          lastDate: DateTime.now(),
        );
        if (picked != null) {
          getIt<CustomersBloc>().add(CustomersEvent.getCustomers(date: picked));
        }
      },
      child: BlocSelector<CustomersBloc, CustomersState, DateTime>(
        selector: (state) =>
            state.mapOrNull(loaded: (s) => s.selectedDate) ?? DateTime.now(),
        builder: (context, selectedDate) {
          return Text(
            DateFormat('EEEE M/d MMMM y', 'ar').format(selectedDate),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
          );
        },
      ),
    );
  }
}
