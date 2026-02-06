import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hup/constant/constant.dart';
import 'package:fruits_hup/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hup/core/utils/app_colors.dart';
import 'package:fruits_hup/core/widgets/custom_button.dart';
import 'package:fruits_hup/feature/auth/presentation/view/login_view.dart';
import 'package:fruits_hup/feature/on_boarding/presentation/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  int currentPage = 0;
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(pageController: pageController)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentPage == 1
                ? AppColors.primaryColor
                : Color(0xff5DB957),
          ),
        ),
        SizedBox(height: 29),

        Visibility(
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          visible: currentPage == 1 ? true : false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(
              onPressed: () {
                SharedPreferencesSingleton.setBool(keyIsBoardingViewSeen, true);
                Navigator.pushReplacementNamed(context, LoginView.routeName);
              },

              data: 'ابدأ الان',
            ),
          ),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
