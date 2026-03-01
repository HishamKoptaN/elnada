// ignore_for_file: unused_import
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
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
      initialLocation: '/${CustomersView.routeName}',
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
