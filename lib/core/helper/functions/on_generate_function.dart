import 'package:flutter/material.dart';
import 'package:fruits_hup/feature/auth/presentation/view/login_view.dart';
import 'package:fruits_hup/feature/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:fruits_hup/feature/splash/presentation/view/splash_view.dart';

Route<dynamic>? onGenerateFunction(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    // Add more routes here as needed
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());

    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    default:
      return null;
  }
}
