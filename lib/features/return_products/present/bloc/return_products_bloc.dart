import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../../../customers/present/bloc/customers_bloc.dart';
import '../../domain/entities/return_product_weight_entity.dart';
import '../../domain/usecases/return_product_use_cases.dart';
part 'return_products_bloc.freezed.dart';
part 'return_products_event.dart';
part 'return_products_state.dart';

@singleton
class ReturnProductsBloc
    extends Bloc<ReturnProductsEvent, ReturnProductsState> {
  ReturnProductsBloc(this.useCases, this.customersBloc)
    : super(const ReturnProductsState.initial()) {
    on<ReturnProductsEvent>((event, emit) async {
      await event.when(
        dataChanged: (returnProductWeightReq) async {
          emitLoaded(
            emit: emit,
            returnProductWeightReq: returnProductWeightReq,
          );
        },
        updateProductPrice: () async {
          await state.mapOrNull(
            loaded: (state) async {
              emitLoaded(
                emit: emit,
                formzSubmissionStatus: FormzSubmissionStatus.inProgress,
                returnProductWeightReq: state.returnProductWeightReq,
              );
              final res = await useCases.returnWeight(
                returnProductWeightReq: state.returnProductWeightReq,
              );
              await res.when(
                success: (res) async {
                  customersBloc.add(
                    CustomersEvent.updateCustomerDailyReport(
                      customerDailyReport:
                          res ?? const CustomerDailyReportEntity(),
                    ),
                  );
                  emit(const ReturnProductsState.success());
                  emitLoaded(
                    emit: emit,
                    returnProductWeightReq: state.returnProductWeightReq,
                  );
                },
                failure: (apiErrorModel) async {
                  emitFaliure(apiErrorModel: apiErrorModel, emit: emit);
                },
              );
            },
          );
        },
      );
    });
  }
  final ReturnProductsUseCases useCases;
  final CustomersBloc customersBloc;

  void emitFaliure({
    required Emitter<ReturnProductsState> emit,
    required ApiErrorModel apiErrorModel,
  }) => emit(ReturnProductsState.failure(apiErrorModel: apiErrorModel));

  void emitLoaded({
    required Emitter<ReturnProductsState> emit,
    required ReturnProductWeightReqEntity returnProductWeightReq,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      ReturnProductsState.loaded(
        returnProductWeightReq: returnProductWeightReq,
        formzSubmissionStatus:
            formzSubmissionStatus ??
            (Formz.validate([
                  returnProductWeightReq.customerId ??
                      const GenericFormzInput.pure(),
                  returnProductWeightReq.productId ??
                      const GenericFormzInput.pure(),
                  returnProductWeightReq.weight ??
                      const GenericFormzInput.pure(),
                ])
                ? FormzSubmissionStatus.success
                : FormzSubmissionStatus.failure),
      ),
    );
  }
}
