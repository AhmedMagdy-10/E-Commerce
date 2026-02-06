import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hup/constant/constant.dart';
import 'package:fruits_hup/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hup/feature/auth/presentation/view/login_view.dart';
import 'package:fruits_hup/feature/on_boarding/presentation/view/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [SvgPicture.asset('assets/images/plant.svg')],
        ),
        SvgPicture.asset('assets/images/logo.svg'),

        SvgPicture.asset('assets/images/points.svg'),
      ],
    );
  }

  void excuteNavigation() {
    bool isBoardingViewSeen = SharedPreferencesSingleton.getBool(
      keyIsBoardingViewSeen,
    );

    Future.delayed(Duration(seconds: 3), () {
      if (isBoardingViewSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
