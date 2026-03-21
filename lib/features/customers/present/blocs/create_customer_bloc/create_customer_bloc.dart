import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../domain/entities/create_customer_req_entity.dart';
import '../../../domain/entities/customer_daily_reports_res_entity.dart';
import '../../../domain/usecases/customers_use_cases.dart';
import '../bloc/customers_bloc.dart';
part 'create_customer_bloc.freezed.dart';
part 'create_customer_event.dart';
part 'create_customer_state.dart';

@singleton
class CreateCustomerBloc
    extends Bloc<CreateCustomerEvent, CreateCustomerState> {
  CreateCustomerBloc(this.customersUseCases, this.customersBloc)
    : super(
        const CreateCustomerState.loaded(
          createCustomerReq: CreateCustomerReqEntity(),
          formzSubmissionStatus: FormzSubmissionStatus.initial,
        ),
      ) {
    on<CreateCustomerEvent>((event, emit) async {
      await event.when(
        dataChanged: (createCustomerReq) async {
          emitLoaded(emit: emit, createCustomerReq: createCustomerReq);
        },
        create: () async {
          await state.mapOrNull(
            loaded: (state) async {
              emit(
                state.copyWith(
                  formzSubmissionStatus: FormzSubmissionStatus.inProgress,
                ),
              );
              final res = await customersUseCases.create(
                createCustomerReq: state.createCustomerReq,
              );
              await res.when(
                success: (res) async {
                  emitLoaded(
                    emit: emit,
                    createCustomerReq: state.createCustomerReq,
                  );
                  customersBloc.add(
                    CustomersEvent.updateCustomerDailyReport(
                      customerDailyReport:
                          res ?? const CustomerDailyReportEntity(),
                    ),
                  );
                  emit(const CreateCustomerState.success());
                  emit(
                    state.copyWith(
                      formzSubmissionStatus: FormzSubmissionStatus.initial,
                    ),
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
  final CustomersUseCases customersUseCases;
  final CustomersBloc customersBloc;
  void emitLoaded({
    required Emitter<CreateCustomerState> emit,
    required CreateCustomerReqEntity createCustomerReq,
    FormzSubmissionStatus formzSubmissionStatus = FormzSubmissionStatus.initial,
  }) {
    emit(
      CreateCustomerState.loaded(
        createCustomerReq: createCustomerReq,
        formzSubmissionStatus: formzSubmissionStatus,
      ),
    );
  }

  void emitFaliure({
    required Emitter<CreateCustomerState> emit,
    required ApiErrorModel apiErrorModel,
  }) => emit(CreateCustomerState.failure(apiErrorModel: apiErrorModel));
}
