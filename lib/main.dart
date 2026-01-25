import 'package:flutter/material.dart';
import 'package:fruits_hup/core/helper/functions/on_generate_function.dart';
import 'package:fruits_hup/feature/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateFunction,
      initialRoute: SplashView.routeName,
    );
  }
}
