import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../daily_collections/domain/entities/daily_collection_entity.dart';
import '../../../../../../daily_collections/domain/entities/update_daily_collection_req_entity.dart';
import '../../../../../../daily_collections/present/update_collection_bloc/update_daily_collections_bloc.dart';

class UpdateCollectionDialog {
  static void show({
    required BuildContext context,
    required DailyCollectionEntity dailyCollection,
  }) {
    final FocusNode amountFocus = FocusNode();
    final FocusNode buttonFocus = FocusNode();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration.zero, () {
          amountFocus.requestFocus();
        });
        getIt<UpdateDailyCollectionsBloc>().add(
          UpdateDailyCollectionsEvent.dataChanged(
            updateDailyCollectionReq: UpdateDailyCollectionReqEntity.fromEntity(
              dailyCollection,
            ),
          ),
        );
        return BlocConsumer<
          UpdateDailyCollectionsBloc,
          UpdateDailyCollectionsState
        >(
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
                  title: Text('تعديل', style: TextStyle(fontSize: 16.sp)),
                  content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 16.h),
                        TextFormField(
                          focusNode: amountFocus,
                          initialValue:
                              state.updateDailyCollectionReq.amount?.value,
                          onChanged: (value) {
                            getIt<UpdateDailyCollectionsBloc>().add(
                              UpdateDailyCollectionsEvent.dataChanged(
                                updateDailyCollectionReq: state
                                    .updateDailyCollectionReq
                                    .copyWith(
                                      amount: GenericFormzInput.dirty(value),
                                    ),
                              ),
                            );
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                            labelText: 'المبلغ',
                            labelStyle: TextStyle(fontSize: 16.sp),
                            border: const OutlineInputBorder(),
                          ),
                          onFieldSubmitted: (_) {
                            buttonFocus.requestFocus();
                          },
                        ),
                        SizedBox(height: 16.h),
                      ],
                    ),
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
                      onPressed:
                          state.formzSubmissionStatus ==
                              FormzSubmissionStatus.success
                          ? () {
                              getIt<UpdateDailyCollectionsBloc>().add(
                                const UpdateDailyCollectionsEvent.update(),
                              );
                            }
                          : null,
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          state.formzSubmissionStatus ==
                                  FormzSubmissionStatus.success
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
                return const SizedBox();
              },
            );
          },
        );
      },
    );
  }
}
