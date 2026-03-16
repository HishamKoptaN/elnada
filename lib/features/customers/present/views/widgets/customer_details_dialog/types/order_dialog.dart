import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../daily_orders/domain/entities/create_daily_order_req_entity.dart';
import '../../../../../../daily_orders/present/bloc/daily_orders_bloc.dart';
import '../../../../../domain/entities/customer_daily_reports_res_entity.dart';

class OrderDialog {
  static void show({
    required BuildContext context,
    required CustomerEntity customer,
    required int productId,
  }) {
    final FocusNode countFocus = FocusNode();
    final FocusNode buttonFocus = FocusNode();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration.zero, () {
          countFocus.requestFocus();
        });
        getIt<DailyOrdersBloc>().add(
          DailyOrdersEvent.dataChanged(
            createDailyOrderReq: CreateDailyOrderReqEntity(
              productId: GenericFormzInput.dirty(productId),
              customerId: GenericFormzInput.dirty(customer.id),
            ),
          ),
        );
        return BlocConsumer<DailyOrdersBloc, DailyOrdersState>(
          listener: (context, state) {
            state.maybeMap(
              success: (s) {
                Navigator.of(context).pop();
              },
              orElse: () => false,
            );
          },
          builder: (context, state) {
            return state.maybeMap(
              loaded: (state) {
                return AlertDialog(
                  title: Text(
                    ' طلب ${productId == 1 ? "تسمين" : "أمهات"}',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        ' ${customer.name ?? ''}',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      SizedBox(height: 16.h),
                      TextFormField(
                        focusNode: countFocus,
                        onChanged: (value) {
                          getIt<DailyOrdersBloc>().add(
                            DailyOrdersEvent.dataChanged(
                              createDailyOrderReq: state.createDailyOrderReq
                                  .copyWith(
                                    count: GenericFormzInput.dirty(value),
                                  ),
                            ),
                          );
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          labelText: 'العدد',
                          border: OutlineInputBorder(),
                        ),
                        onFieldSubmitted: (_) {
                          buttonFocus.requestFocus();
                        },
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text('إلغاء', style: TextStyle(fontSize: 16.sp)),
                    ),
                    ElevatedButton(
                      focusNode: buttonFocus,
                      onPressed: () {
                        getIt<DailyOrdersBloc>().add(
                          const DailyOrdersEvent.create(),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          state.createDailyOrderReq.isValid
                              ? Colors.green
                              : Colors.grey,
                        ),
                        foregroundColor: const WidgetStatePropertyAll(
                          Colors.white,
                        ),
                      ),
                      child: Text('حفظ', style: TextStyle(fontSize: 16.sp)),
                    ),
                  ],
                );
              },
              orElse: () {
                return const SizedBox.shrink();
              },
            );
          },
        );
      },
    );
  }
}
