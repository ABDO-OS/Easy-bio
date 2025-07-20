// import 'package:easy_bio/features/Login/presentation/views/login_view.dart';
// import 'package:easy_bio/features/welcome/presentation/views/main_view.dart';
// import 'package:easy_bio/features/welcome/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

import 'base_routes.dart';

class AppRoutes {
  static const String initial = '/';
  static const String login = 'login';
  static const String main = 'main';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case initial:
      // return BaseRoute(page: const SplashView());
      case main:
      // return BaseRoute(page: const MainView());
      case login:
      // return BaseRoute(page: const LoginView());

      // case bestSelling:
      //   return MaterialPageRoute(builder: (context) => const BestSellingView());
      default:
        return BaseRoute(
          page: const Scaffold(body: Center(child: Text('Page not found'))),
        );
    }
  }
}
