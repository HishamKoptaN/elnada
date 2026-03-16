import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import '../../../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../../../daily_transactions/domain/entities/daily_transaction_entity.dart';
import '../../../../../../transactions_details/domain/entities/update_transaction_details_req_entity.dart';
import '../../../../../../transactions_details/present/bloc/transactions_details_bloc.dart';
import '../../../../../../../core/di/dependency_injection.dart';

class UpdateTransactionDetailsDialog {
  static void show({
    required BuildContext context,
    required TransactionDetailEntity transactionDetail,
  }) {
    final FocusNode weightFocus = FocusNode();
    final FocusNode cageFocus = FocusNode();
    final FocusNode buttonFocus = FocusNode();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration.zero, () {
          weightFocus.requestFocus();
        });
        getIt<TransactionsDetailsBloc>().add(
          TransactionsDetailsEvent.dataChanged(
            updateTransactionDetailsReq:
                UpdateTransactionDetailsReqEntity.fromEntity(transactionDetail),
          ),
        );
        return BlocConsumer<TransactionsDetailsBloc, TransactionsDetailsState>(
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
                  title: Text('تعديل', style: TextStyle(fontSize: 16.sp)),
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 20.h,
                    children: [
                      SizedBox(height: 16.h),
                      TextFormField(
                        focusNode: weightFocus,
                        initialValue: state.maybeMap(
                          loaded: (s) {
                            return s.createDailyTransactionReq.weight?.value
                                .toString();
                          },
                          orElse: () => '',
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r'^\d*\.?\d*'),
                          ),
                        ],
                        onChanged: (v) {
                          getIt<TransactionsDetailsBloc>().add(
                            TransactionsDetailsEvent.dataChanged(
                              updateTransactionDetailsReq: state
                                  .createDailyTransactionReq
                                  .copyWith(weight: GenericFormzInput.dirty(v)),
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
                          loaded: (s) {
                            return s.createDailyTransactionReq.cage?.value
                                .toString();
                          },
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
                        onChanged: (v) {
                          getIt<TransactionsDetailsBloc>().add(
                            TransactionsDetailsEvent.dataChanged(
                              updateTransactionDetailsReq: state
                                  .createDailyTransactionReq
                                  .copyWith(cage: GenericFormzInput.dirty(v)),
                            ),
                          );
                        },
                        onFieldSubmitted: (_) {
                          buttonFocus.requestFocus();
                        },
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
                              getIt<TransactionsDetailsBloc>().add(
                                const TransactionsDetailsEvent.update(),
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
                      child: state.formzSubmissionStatus.isInProgress
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
