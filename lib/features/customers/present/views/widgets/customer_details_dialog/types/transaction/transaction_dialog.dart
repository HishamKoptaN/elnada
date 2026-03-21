import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import '../../../../../../../../core/utils/date_helpers.dart';
import '../../../../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../../../../daily_transactions/domain/entities/create_daily_transaction_req_entity.dart';
import '../../../../../../../daily_transactions/present/bloc/daily_transactions_bloc.dart';
import '../../../../../../domain/entities/customer_daily_reports_res_entity.dart';
import '../../../../../../../../core/di/dependency_injection.dart';

class TransactionDialog {
  static void show({
    required BuildContext context,
    required CustomerEntity customer,
    required int productId,
    required DateTime selectedDate,
    required bool canInsertPreviusDayData,
    required String title,
  }) {
    final FocusNode weightFocus = FocusNode();
    final FocusNode cageFocus = FocusNode();
    final FocusNode buttonFocus = FocusNode();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration.zero, () => weightFocus.requestFocus());
        getIt<DailyTransactionsBloc>().add(
          DailyTransactionsEvent.dataChanged(
            createDailyTransactionReq: CreateDailyTransactionReqEntity(
              customerId: GenericFormzInput.dirty(customer.id),
              productId: GenericFormzInput.dirty(productId),
              date: !selectedDate.isToday && canInsertPreviusDayData
                  ? selectedDate
                  : null,
            ),
          ),
        );
        return BlocConsumer<DailyTransactionsBloc, DailyTransactionsState>(
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
                final bool isValid =
                    state.formzSubmissionStatus ==
                    FormzSubmissionStatus.success;
                return AlertDialog(
                  title: Text(title, style: TextStyle(fontSize: 16.sp)),
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 20.h,
                    children: [
                      Text(
                        customer.name ?? '',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      TextFormField(
                        focusNode: weightFocus,
                        initialValue: state.maybeMap(
                          loaded: (s) => s
                              .createDailyTransactionReq
                              .weight
                              ?.value
                              .toString(),
                          orElse: () => '',
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r'^\d*\.?\d*'),
                          ),
                        ],
                        onChanged: (value) {
                          getIt<DailyTransactionsBloc>().add(
                            DailyTransactionsEvent.dataChanged(
                              createDailyTransactionReq: state
                                  .createDailyTransactionReq
                                  .copyWith(
                                    weight: GenericFormzInput.dirty(value),
                                  ),
                            ),
                          );
                        },
                        decoration: InputDecoration(
                          labelText: 'الوزن',
                          labelStyle: TextStyle(fontSize: 16.sp),
                          border: const OutlineInputBorder(),
                        ),
                        onFieldSubmitted: (_) => cageFocus.requestFocus(),
                      ),
                      TextFormField(
                        focusNode: cageFocus,
                        initialValue: state.maybeMap(
                          loaded: (s) => s
                              .createDailyTransactionReq
                              .weight
                              ?.value
                              .toString(),
                          orElse: () => '',
                        ),
                        decoration: InputDecoration(
                          labelText: 'عدد الاقفاص',
                          labelStyle: TextStyle(fontSize: 16.sp),
                          border: const OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        onChanged: (value) {
                          getIt<DailyTransactionsBloc>().add(
                            DailyTransactionsEvent.dataChanged(
                              createDailyTransactionReq: state
                                  .createDailyTransactionReq
                                  .copyWith(
                                    cage: GenericFormzInput.dirty(value),
                                  ),
                            ),
                          );
                        },
                        onFieldSubmitted: (_) => buttonFocus.requestFocus(),
                      ),
                      SizedBox(height: 16.h),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text('إلغاء', style: TextStyle(fontSize: 16.sp)),
                    ),
                    ElevatedButton(
                      focusNode: buttonFocus,
                      onPressed: isValid
                          ? () {
                              getIt<DailyTransactionsBloc>().add(
                                const DailyTransactionsEvent.create(),
                              );
                            }
                          : null,
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          isValid ? Colors.green : Colors.grey,
                        ),
                        foregroundColor: const WidgetStatePropertyAll(
                          Colors.white,
                        ),
                      ),
                      child:
                          state.formzSubmissionStatus ==
                              FormzSubmissionStatus.inProgress
                          ? const CustomCircularProgress()
                          : Text('إضافة', style: TextStyle(fontSize: 16.sp)),
                    ),
                  ],
                );
              },
              orElse: () {
                return const SizedBox();
              },
            );
          },
        );
      },
    );
  }
}
