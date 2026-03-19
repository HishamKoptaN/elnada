part of 'customers_bloc.dart';

@freezed
abstract class CustomersEvent with _$CustomersEvent {
  const factory CustomersEvent.getCustomers({required DateTime date}) =
      _GetCustomers;
  const factory CustomersEvent.getCustomerDailyReport({required int id}) =
      _GetCustomerDailyReport;
  const factory CustomersEvent.getCustomerStatement({
    required int customerId,
    int? days,
  }) = _GetCustomerStatement;
  const factory CustomersEvent.searchCustomers({
    required DateTime selectedDate,
    required String query,
  }) = _SearchCustomers;
  const factory CustomersEvent.disposeSearch() = _DisposeSearch;
  const factory CustomersEvent.priceChanged({
    required ProductDailyPriceEntity productPrice,
  }) = _PriceChanged;
  const factory CustomersEvent.updateCustomerDailyReport({
    required CustomerDailyReportEntity customerDailyReport,
  }) = _UpdateCustomerDailyReport;
  const factory CustomersEvent.print({
    required List<CustomerDailyReportEntity> reports,
  }) = _Print;
}
