import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../../../customers/present/bloc/customers_bloc.dart';
import '../../domain/entities/price_discount_req_entity.dart';
import '../../domain/usecases/price_discount_use_cases.dart';
part 'update_price_discount_bloc.freezed.dart';
part 'update_price_discount_event.dart';
part 'update_price_discount_state.dart';

@singleton
class PriceDiscountBloc extends Bloc<PriceDiscountEvent, PriceDiscountState> {
  PriceDiscountBloc(this.priceDiscountUseCases, this.customersBloc)
    : super(const PriceDiscountState.initial()) {
    on<PriceDiscountEvent>((event, emit) async {
      await event.when(
        dataChanged: (updatePriceDiscountReq) async {
          emitLoaded(
            emit: emit,
            updatePriceDiscountReq: updatePriceDiscountReq,
          );
        },
        update: () async {
          await state.mapOrNull(
            loaded: (state) async {
              emit(
                state.copyWith(
                  formzSubmissionStatus: FormzSubmissionStatus.inProgress,
                ),
              );
              final res = await priceDiscountUseCases.priceDiscount(
                updatePriceDiscountReq: state.priceDiscountReq,
              );
              await res.when(
                success: (res) async {
                  emitLoaded(
                    emit: emit,
                    updatePriceDiscountReq: state.priceDiscountReq.copyWith(
                      priceDiscountAmount: const GenericFormzInput.pure(),
                    ),
                  );
                  customersBloc.add(
                    CustomersEvent.updateCustomerDailyReport(
                      customerDailyReport:
                          res ?? const CustomerDailyReportEntity(),
                    ),
                  );
                  emit(const PriceDiscountState.success());
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
  final PriceDiscountUseCases priceDiscountUseCases;
  final CustomersBloc customersBloc;
  void emitFaliure({
    required Emitter<PriceDiscountState> emit,
    required ApiErrorModel apiErrorModel,
  }) {
    emit(PriceDiscountState.failure(apiErrorModel: apiErrorModel));
  }

  void emitLoaded({
    required Emitter<PriceDiscountState> emit,
    required PriceDiscountReqEntity updatePriceDiscountReq,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      PriceDiscountState.loaded(
        priceDiscountReq: updatePriceDiscountReq,
        formzSubmissionStatus:
            formzSubmissionStatus ??
            ((Formz.validate([
                  updatePriceDiscountReq.priceDiscountAmount ??
                      const GenericFormzInput.pure(),
                ])
                // &&
                // updatePriceDiscountReq.hasChanged
                )
                ? FormzSubmissionStatus.success
                : FormzSubmissionStatus.failure),
      ),
    );
  }
}
