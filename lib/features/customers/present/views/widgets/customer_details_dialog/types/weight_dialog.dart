import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import '../../../../../../daily_transactions/domain/entities/create_daily_transaction_req_entity.dart';
import '../../../../../../daily_transactions/present/bloc/daily_transactions_bloc.dart';
import '../../../../../domain/entities/customer_entity.dart';
import '../../../../../../../core/di/dependency_injection.dart';

class WeightDialog {
  static void show({
    required BuildContext context,
    required CustomerEntity customer,
    required int productId,
    required String title,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
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
            final bool isValid = state.maybeMap(
              loaded: (s) =>
                  s.formzSubmissionStatus == FormzSubmissionStatus.success,
              orElse: () => false,
            );
            return AlertDialog(
              title: Text(title),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    customer.name ?? '',
                    style: TextStyle(
                      fontSize: 6.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    initialValue: state.maybeMap(
                      loaded: (s) =>
                          s.createDailyTransactionReq.weight.value.toString(),
                      orElse: () => '',
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (value) {
                      getIt<DailyTransactionsBloc>().add(
                        DailyTransactionsEvent.dataChanged(
                          createDailyTransactionReq: state.maybeMap(
                            loaded: (s) => s.createDailyTransactionReq.copyWith(
                              productId: GenericFormzInput.dirty(productId),
                              customerId: GenericFormzInput.dirty(customer.id),
                              weight: GenericFormzInput.dirty(value),
                            ),
                            orElse: () => CreateDailyTransactionReqEntity(
                              customerId: GenericFormzInput.dirty(customer.id),
                              productId: GenericFormzInput.dirty(productId),
                              weight: GenericFormzInput.dirty(value),
                              cage: GenericFormzInput.dirty(''),
                              discount: GenericFormzInput.dirty(''),
                            ),
                          ),
                        ),
                      );
                    },
                    decoration: InputDecoration(
                      labelText: 'الوزن',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('إلغاء'),
                ),
                ElevatedButton(
                  onPressed: isValid
                      ? () {
                          getIt<DailyTransactionsBloc>().add(
                            DailyTransactionsEvent.create(),
                          );
                        }
                      : null,
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      isValid ? Colors.green : Colors.grey,
                    ),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  child: Text('إضافة'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
