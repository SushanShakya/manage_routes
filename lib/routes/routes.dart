import 'package:flutter/material.dart';
import 'package:manage_routes/routes/route_type.dart';
import 'package:manage_routes/routes/separated/auth_routes.dart';
import 'package:manage_routes/routes/separated/hotel_routes.dart';
import 'package:manage_routes/routes/separated/package_routes.dart';
import 'package:manage_routes/routes/slide_route.dart';

import '../views/home_view.dart';
import 'app_routes.dart';

class Routes {
  static Map<String, RouteType> _resolveRoutes() {
    return {
      AppRoutes.home: (context, settings) => const HomeView(),
      ...authRoutes,
      ...hotelRoutes,
      ...packageRoutes,
    };
  }

  static Route onGenerateRoutes(RouteSettings settings) {
    var routes = _resolveRoutes();
    try {
      final child = routes[settings.name];

      Widget builder(BuildContext c) => child!(c, settings);

      if (settings.name == AppRoutes.hotel) {
        return SlideRoute(builder: builder);
      }

      return MaterialPageRoute(
        builder: builder,
      );
    } catch (e) {
      throw const FormatException("--- Route doesn't exist");
    }
  }
}
