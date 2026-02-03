import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hup/core/utils/app_colors.dart';
import 'package:fruits_hup/core/widgets/custom_button.dart';
import 'package:fruits_hup/feature/on_boarding/presentation/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: Color(0xff5DB957),
          ),
        ),
        SizedBox(height: 29),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomButton(onPressed: () {}, data: 'ابدأ الان'),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
