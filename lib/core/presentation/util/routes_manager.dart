import 'package:flutter/material.dart';
import 'package:onboarding_login_register/core/presentation/util/strings_manager.dart';
import 'package:onboarding_login_register/features/auth/presentation/screens/login_screen.dart';
import 'package:onboarding_login_register/features/auth/presentation/screens/register_screen.dart';
import 'package:onboarding_login_register/features/onboarding/presentation/screens/onboarding_screen.dart';

class AppRoutes {
  static const onboarding = '/onboarding';
  static const login = '/login';
  static const register = '/register';
}

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.onboarding:
      return MaterialPageRoute(
        builder: (_) => const OnboardingScreen(),
      );
    case AppRoutes.login:
      return MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      );
    case AppRoutes.register:
      return MaterialPageRoute(
        builder: (_) => const RegisterScreen(),
      );
    default:
      return undefinedRoute();
  }
}

Route<dynamic> undefinedRoute() => MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
      ),
    );
