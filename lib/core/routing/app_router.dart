// ignore_for_file: unused_import
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import '../../features/customers/present/views/table/customer_statement_excel_page.dart';
import '../../features/customers/present/views/cards/customer_statement_page.dart';
import '../../features/customers/present/views/customers_view.dart';
import '../app/global_variable.dart';
import '../di/dependency_injection.dart';
import 'app_router_redirect.dart';
import 'config/route_config.dart';
import 'error_page.dart';
import 'go_router_refresh.dart';

class AppRouter {
  static GoRouter create() {
    return GoRouter(
      initialLocation: kDebugMode
          ? '/${CustomersView.routeName}'
          : '/${CustomersView.routeName}',
      routes: RouteConfig.routes,
      navigatorKey: GlobalVariable.navState,
      debugLogDiagnostics: true,
      redirect: (context, state) {
        final String currentLocation = state.matchedLocation.replaceFirst(
          '/',
          '',
        );
      },
    );
  }
}
