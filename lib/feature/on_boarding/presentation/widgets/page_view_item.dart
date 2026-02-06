import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hup/constant/constant.dart';
import 'package:fruits_hup/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hup/core/utils/app_text_styles.dart';
import 'package:fruits_hup/feature/auth/presentation/view/login_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.subTitle,
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.isVisible,
  });

  final String subTitle, image, backgroundImage;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              SvgPicture.asset(backgroundImage, fit: BoxFit.cover),

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isVisible,
                child: GestureDetector(
                  onTap: () {
                    SharedPreferencesSingleton.setBool(
                      keyIsBoardingViewSeen,
                      true,
                    );
                    Navigator.pushReplacementNamed(
                      context,
                      LoginView.routeName,
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'تخطي',
                      style: TextStyles.regular13.copyWith(
                        color: Color(0xff949D9E),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 65),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold13.copyWith(color: Color(0xFF4E5556)),
          ),
        ),
      ],
    );
  }
}
