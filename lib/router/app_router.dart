import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:movie_quest/features/auth/login/widgets/login_screen.dart';
import 'package:movie_quest/features/auth/registration/widgets/registration_screen.dart';

part 'app_router.gr.dart';

Widget _fadeTransition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return FadeTransition(opacity: animation, child: child);
}

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    CustomRoute(
      page: LoginRoute.page,
      initial: true,
      transitionsBuilder: _fadeTransition,
    ),
    CustomRoute(
      page: RegistrationRoute.page,
      transitionsBuilder: _fadeTransition,
    ),
  ];
}
