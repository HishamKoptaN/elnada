import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../blocs/create_customer_bloc/create_customer_bloc.dart';

class CreateCustomerDialog {
  static void show({required BuildContext context}) {
    final FocusNode nameFocus = FocusNode();
    final FocusNode numberFocus = FocusNode();
    final FocusNode buttonFocus = FocusNode();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration.zero, () {
          nameFocus.requestFocus();
        });
        return BlocProvider.value(
          value: getIt<CreateCustomerBloc>(),
          child: BlocConsumer<CreateCustomerBloc, CreateCustomerState>(
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
                      'اضافة زبون',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 15.h,
                      children: [
                        TextFormField(
                          focusNode: nameFocus,
                          onChanged: (v) {
                            getIt<CreateCustomerBloc>().add(
                              CreateCustomerEvent.dataChanged(
                                createCustomerReq: state.createCustomerReq
                                    .copyWith(name: GenericFormzInput.dirty(v)),
                              ),
                            );
                          },
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            labelText: 'اسم الزبون',
                            border: OutlineInputBorder(),
                          ),
                          onFieldSubmitted: (_) {
                            numberFocus.requestFocus();
                          },
                        ),
                        TextFormField(
                          focusNode: numberFocus,
                          onChanged: (v) {
                            getIt<CreateCustomerBloc>().add(
                              CreateCustomerEvent.dataChanged(
                                createCustomerReq: state.createCustomerReq
                                    .copyWith(
                                      number: GenericFormzInput.dirty(v),
                                    ),
                              ),
                            );
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: const InputDecoration(
                            labelText: 'رقم',
                            border: OutlineInputBorder(),
                          ),
                          onFieldSubmitted: (_) {
                            buttonFocus.requestFocus();
                          },
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('إلغاء', style: TextStyle(fontSize: 16.sp)),
                      ),
                      ElevatedButton(
                        focusNode: buttonFocus,
                        onPressed: () {
                          getIt<CreateCustomerBloc>().add(
                            const CreateCustomerEvent.create(),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            (state.createCustomerReq.name?.value?.isNotEmpty ==
                                        true &&
                                    state
                                            .createCustomerReq
                                            .number
                                            ?.value
                                            ?.isNotEmpty ==
                                        true)
                                ? Colors.green
                                : Colors.grey,
                          ),
                          foregroundColor: const WidgetStatePropertyAll(
                            Colors.white,
                          ),
                        ),
                        child:
                            state.formzSubmissionStatus ==
                                FormzSubmissionStatus.inProgress
                            ? const CustomCircularProgress()
                            : Text('حفظ', style: TextStyle(fontSize: 16.sp)),
                      ),
                    ],
                  );
                },
                orElse: () {
                  return const Center(child: CustomCircularProgress());
                },
              );
            },
          ),
        );
      },
    );
  }
}
