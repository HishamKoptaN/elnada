import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart' show RouteBase;
import '../../../features/customers/present/views/table/customer_statement_excel_page.dart';
import '../../../features/customers/present/views/cards/customer_statement_page.dart';
import '../../../features/customers/present/views/customers_view.dart';
import '../utils/route_builder.dart' show RouteBuilder;

class RouteConfig {
  static List<RouteBase> get routes {
    final routes = [
      RouteBuilder.goRoute(
        routeName: CustomersView.routeName,
        builder: (context, state) => const CustomersView(),
      ),
      RouteBuilder.goRoute(
        routeName: CustomerStatementPage.routeName,
        builder: (context, state) => CustomerStatementPage(
          customerId: kDebugMode ? 1 : state.extra! as int,
          customerName: kDebugMode ? 'ام عبدالرحمن' : state.extra! as String,
        ),
      ),
      RouteBuilder.goRoute(
        routeName: CustomerStatementExcelPage.routeName,
        builder: (context, state) => CustomerStatementExcelPage(
          customerId: kDebugMode ? 1 : state.extra! as int,
          customerName: kDebugMode ? 'ام عبدالرحمن' : state.extra! as String,
        ),
      ),
    ];
    return routes;
  }
}
