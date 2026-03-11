import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../../../customers/present/bloc/customers_bloc.dart';
import '../../domain/entities/create_daily_transaction_req_entity.dart';
import '../../domain/usecases/daily_transactions_use_cases.dart';
part 'daily_transactions_bloc.freezed.dart';
part 'daily_transactions_event.dart';
part 'daily_transactions_state.dart';

@singleton
class DailyTransactionsBloc
    extends Bloc<DailyTransactionsEvent, DailyTransactionsState> {
  final DailyTransactionsUseCases dailyTransactionsUseCases;
  final CustomersBloc customersBloc;
  DailyTransactionsBloc(this.dailyTransactionsUseCases, this.customersBloc)
    : super(const DailyTransactionsState.initial()) {
    on<DailyTransactionsEvent>((event, emit) async {
      await event.when(
        dataChanged: (createDailyTransactionReq) async {
          emitLoaded(
            emit: emit,
            createDailyTransactionReq: createDailyTransactionReq,
          );
        },
        create: () async {
          await state.mapOrNull(
            loaded: (state) async {
              emitLoaded(
                emit: emit,
                formzSubmissionStatus: FormzSubmissionStatus.inProgress,
                createDailyTransactionReq: state.createDailyTransactionReq,
              );
              final res = await dailyTransactionsUseCases.create(
                createDailyTransactionReq: state.createDailyTransactionReq,
              );
              await res.when(
                success: (res) async {
                  customersBloc.add(
                    CustomersEvent.updateCustomerDailyReport(
                      customerDailyReport: res!,
                    ),
                  );
                  emitLoaded(
                    emit: emit,
                    createDailyTransactionReq: state.createDailyTransactionReq
                        .copyWith(weight: null),
                  );
                  emit(DailyTransactionsState.success());
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
  void emitFaliure({
    required Emitter<DailyTransactionsState> emit,
    required ApiErrorModel apiErrorModel,
  }) => emit(DailyTransactionsState.failure(apiErrorModel: apiErrorModel));

  void emitLoaded({
    required Emitter<DailyTransactionsState> emit,
    required CreateDailyTransactionReqEntity createDailyTransactionReq,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      DailyTransactionsState.loaded(
        createDailyTransactionReq: createDailyTransactionReq,
        formzSubmissionStatus:
            formzSubmissionStatus ??
            (Formz.validate([
                  createDailyTransactionReq.customerId ??
                      GenericFormzInput.dirty(0),
                  createDailyTransactionReq.productId ??
                      GenericFormzInput.dirty(0),
                  createDailyTransactionReq.weight ??
                      GenericFormzInput.dirty(''),
                ])
                ? FormzSubmissionStatus.success
                : FormzSubmissionStatus.failure),
      ),
    );
  }
}
