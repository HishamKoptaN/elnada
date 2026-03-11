import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../../../customers/present/bloc/customers_bloc.dart';
import '../../domain/entities/create_daily_order_req_entity.dart';
import '../../domain/usecases/daily_orders_use_cases.dart';
part 'daily_orders_bloc.freezed.dart';
part 'daily_orders_event.dart';
part 'daily_orders_state.dart';

@singleton
class DailyOrdersBloc extends Bloc<DailyOrdersEvent, DailyOrdersState> {
  final DailyOrdersUseCases dailyOrdersUseCases;
  final CustomersBloc customersBloc;
  DailyOrdersBloc(this.dailyOrdersUseCases, this.customersBloc)
    : super(const DailyOrdersState.initial()) {
    on<DailyOrdersEvent>((event, emit) async {
      await event.when(
        dataChanged: (createDailyOrderReq) async {
          emitLoaded(emit: emit, createDailyOrderReq: createDailyOrderReq);
        },
        create: () async {
          await state.mapOrNull(
            loaded: (state) async {
              emitLoaded(
                emit: emit,
                createDailyOrderReq: state.createDailyOrderReq,
              );
              final res = await dailyOrdersUseCases.create(
                createDailyOrderReq: state.createDailyOrderReq,
              );
              await res.when(
                success: (res) async {
                  emitLoaded(
                    emit: emit,
                    createDailyOrderReq: state.createDailyOrderReq.copyWith(
                      count: null,
                    ),
                  );
                  customersBloc.add(
                    CustomersEvent.updateCustomerDailyReport(
                      customerDailyReport: res ?? CustomerDailyReportEntity(),
                    ),
                  );
                  emit(DailyOrdersState.success());
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
    required Emitter<DailyOrdersState> emit,
    required ApiErrorModel apiErrorModel,
  }) => emit(DailyOrdersState.failure(apiErrorModel: apiErrorModel));

  void emitLoaded({
    required Emitter<DailyOrdersState> emit,
    required CreateDailyOrderReqEntity createDailyOrderReq,
  }) {
    emit(DailyOrdersState.loaded(createDailyOrderReq: createDailyOrderReq));
  }
}
