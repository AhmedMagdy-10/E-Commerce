import 'package:flutter/material.dart';
import 'package:fruits_hup/feature/on_boarding/presentation/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String routeName = 'OnBoarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: OnBoardingViewBody()));
  }
}
