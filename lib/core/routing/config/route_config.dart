import 'package:go_router/go_router.dart' show RouteBase;
import '../../../features/customers/present/views/customers_view.dart';
import '../utils/route_builder.dart' show RouteBuilder;

class RouteConfig {
  static List<RouteBase> get routes {
    final routes = [
      RouteBuilder.goRoute(
        routeName: CustomersView.routeName,
        builder: (context, state) => const CustomersView(),
      ),
    ];
    return routes;
  }
}
