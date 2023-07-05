import 'package:manage_routes/routes/route_type.dart';
import 'package:manage_routes/views/login_view.dart';

import '../../views/signup_view.dart';
import '../app_routes.dart';

Map<String, RouteType> authRoutes = {
  AppRoutes.login: (context, settings) => const LoginView(),
  AppRoutes.signup: (context, settings) => const SignUpView(),
};
