import 'package:flutter/material.dart';
import 'package:fruits_hup/feature/splash/presentation/view/splash_view.dart';

Route<dynamic>? onGenerateFunction(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    // Add more routes here as needed
    default:
      return null;
  }
}
