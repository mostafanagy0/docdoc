import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/features/login/ui/views/login_view.dart';
import 'package:docdoc/features/onbording/onbording_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnbordingView());
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
