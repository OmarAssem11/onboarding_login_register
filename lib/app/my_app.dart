import 'package:flutter/material.dart';
import 'package:onboarding_login_register/core/presentation/util/routes_manager.dart';
import 'package:onboarding_login_register/core/presentation/util/strings_manager.dart';
import 'package:onboarding_login_register/core/presentation/util/theme_manager.dart';

class MyApp extends StatefulWidget {
  factory MyApp() => instance;

  const MyApp._internal();

  static const MyApp instance = MyApp._internal();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      onGenerateRoute: onGenerateRoute,
      initialRoute: AppRoutes.onboarding,
      theme: getLightTheme(),
    );
  }
}
