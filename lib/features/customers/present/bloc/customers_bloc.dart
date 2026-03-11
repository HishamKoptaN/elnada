import 'package:abujena_dawajen/features/customers/domain/entities/customer_daily_report_details_res_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../data/mappers/customer_daily_reports_res_mapper.dart';
import '../../data/models/customer_daily_reports_res_model.dart';
import '../../domain/entities/customer_daily_reports_res_entity.dart';
import '../../domain/entities/customer_statement_res_entity.dart';
import '../../domain/usecases/customers_use_cases.dart';
part 'customers_bloc.freezed.dart';
part 'customers_event.dart';
part 'customers_state.dart';

@singleton
class CustomersBloc extends HydratedBloc<CustomersEvent, CustomersState> {
  CustomersBloc(this.customersUseCases)
    : super(const CustomersState.initial()) {
    on<CustomersEvent>((event, emit) async {
      await event.when(
        getCustomers: (date) async {
          emit(
            CustomersState.loaded(
              customersRes: CustomersResEntity(),
              selectedDate: date,
            ),
          );
          final result = await customersUseCases.getCustomers(
            selectedDate: date,
          );
          await result.when(
            success: (res) async {
              emit(
                CustomersState.loaded(
                  customersRes: res ?? CustomersResEntity(),
                  selectedDate: date,
                ),
              );
            },
            failure: (error) async {
              emit(CustomersState.failure(apiErrorModel: error));
              emit(
                CustomersState.loaded(
                  customersRes: CustomersResEntity(),
                  selectedDate: date,
                ),
              );
            },
          );
        },
        getCustomerDailyReport: (id) async {
          await state.mapOrNull(
            loaded: (state) async {
              emit(state);
              final result = await customersUseCases.getCustomerDailyReport(
                id: id,
              );
              await result.when(
                success: (res) async {
                  emit(
                    state.copyWith(
                      customerDailyReportDetailsRes:
                          res ?? const CustomerDailyReportDetailsResEntity(),
                    ),
                  );
                },
                failure: (error) async {
                  emit(CustomersState.failure(apiErrorModel: error));
                  emit(
                    state.copyWith(
                      customerDailyReportDetailsRes:
                          state.customerDailyReportDetailsRes,
                    ),
                  );
                },
              );
            },
          );
        },
        getCustomerStatement: (customerId, days) async {
          final result = await customersUseCases
              .getCustomerDailyReportStatement(id: customerId, days: days);
          await result.when(
            success: (res) async {
              emit(
                CustomersState.loaded(
                  selectedDate: DateTime.now(),
                  customersRes: CustomersResEntity(),
                  customerStatement:
                      res ?? const CustomerStatementReportResEntity(),
                ),
              );
            },
            failure: (error) async {
              emit(CustomersState.failure(apiErrorModel: error));
              // emit(state.copyWith(customerStatement: state.customerStatement));
            },
          );
        },
        searchCustomers: (date, query) async {},
        disposeSearch: () {},
        priceChanged: (newDailyPrice) async {
          await state.mapOrNull(
            loaded: (state) {
              emit(
                state.copyWith(
                  customersRes: state.customersRes.copyWith(
                    productDailyPrices: state.customersRes.productDailyPrices
                        ?.map((p) {
                          if (p.product?.id == newDailyPrice.productId) {
                            return p.copyWith(productDailyprice: newDailyPrice);
                          }
                          return p;
                        })
                        .toList(),
                  ),
                ),
              );
            },
          );
        },
        updateCustomerDailyReport: (customerDailyReport) {
          state.mapOrNull(
            loaded: (state) {
              emit(
                state.copyWith(
                  customersRes: state.customersRes.copyWith(
                    customerDailyReports: state
                        .customersRes
                        .customerDailyReports
                        ?.map((p) {
                          if (p.id == customerDailyReport.id) {
                            return customerDailyReport;
                          }
                          return p;
                        })
                        .toList(),
                  ),
                  selectedDate: state.selectedDate,
                ),
              );
            },
          );
        },
      );
    });
  }
  final CustomersUseCases customersUseCases;

  @override
  CustomersState? fromJson(Map<String, dynamic> json) {
    try {
      final stateType = json['type'] as String?;
      switch (stateType) {
        case 'initial':
          return const CustomersState.initial();
        case 'loading':
          return const CustomersState.loading();
        case 'loaded':
          final customersJson =
              json['customersRes'] as Map<String, dynamic>? ?? {};
          final customersModel = CustomerDailyReportsResModel.fromJson(
            customersJson,
          );
          final customers = customersModel.toEntity();
          return CustomersState.loaded(
            customersRes: customers,
            selectedDate: DateTime.parse(json['selectedDate'] as String),
            customerDailyReportDetailsRes:
                const CustomerDailyReportDetailsResEntity(),
          );
        case 'failure':
          final errorJson = json['error'] as Map<String, dynamic>? ?? {};
          final apiError = ApiErrorModel.fromJson(errorJson);
          return CustomersState.failure(apiErrorModel: apiError);
        default:
          return const CustomersState.initial();
      }
    } catch (e) {
      return const CustomersState.initial();
    }
  }

  @override
  Map<String, dynamic>? toJson(CustomersState state) {
    return state.when(
      initial: () => {'type': 'initial'},
      loading: () => {'type': 'loading'},
      loaded:
          (
            selectedDate,
            customersRes,
            customerDailyReportDetailsRes,
            customerStatement,
            days,
          ) {
            return {
              'type': 'loaded',
              'selectedDate': selectedDate.toIso8601String(),
              'customersRes': customersRes.toJson(),
              'customerDailyReportDetailsRes': customerDailyReportDetailsRes
                  ?.toJson(),
              'days': days,
            };
          },
      failure: (apiErrorModel) => {
        'type': 'failure',
        'error': apiErrorModel.toJson(),
      },
    );
  }

  void emitFaliure({
    required Emitter<CustomersState> emit,
    required ApiErrorModel apiErrorModel,
  }) => emit(CustomersState.failure(apiErrorModel: apiErrorModel));

  void emitLoaded({
    required Emitter<CustomersState> emit,
    required CustomersResEntity customersRes,
    required DateTime selectedDate,
    required CustomerDailyReportDetailsResEntity customerDailyReportDetailsRes,
    required CustomerStatementReportResEntity customerStatement,
  }) => emit(
    CustomersState.loaded(
      customersRes: customersRes,
      selectedDate: selectedDate,
      customerDailyReportDetailsRes: customerDailyReportDetailsRes,
      customerStatement: customerStatement,
    ),
  );
}
