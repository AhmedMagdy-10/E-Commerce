import 'package:flutter/material.dart';
import 'package:fruits_hup/core/utils/app_colors.dart';
import 'package:fruits_hup/core/utils/app_text_styles.dart';
import 'package:fruits_hup/core/widgets/custom_button.dart';
import 'package:fruits_hup/feature/auth/presentation/view/widgets/custom_text_form_filed.dart';
import 'package:fruits_hup/feature/auth/presentation/view/widgets/dont_have_account_widget.dart';
import 'package:fruits_hup/feature/auth/presentation/view/widgets/or_divider.dart';
import 'package:fruits_hup/feature/auth/presentation/view/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 24, right: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xFFC9CECF)),
              textInputType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 16),
            Text(
              'نسيت كلمة المرور ؟',
              style: TextStyles.semiBold13.copyWith(
                color: AppColors.lightPrimaryColor,
              ),
            ),
            SizedBox(height: 33),
            CustomButton(onPressed: () {}, data: 'تسجيل دخول'),
            SizedBox(height: 33),

            DontHaveAccountWidget(),
            SizedBox(height: 33),
            OrDivider(),
            SizedBox(height: 16),
            SocialLoginButton(
              image: 'assets/images/google_icon.svg',
              title: 'تسجيل بواسطة جوجل',
              onPressed: () {},
            ),
            SizedBox(height: 16),
            SocialLoginButton(
              image: 'assets/images/apple_icon.svg',
              title: 'تسجيل بواسطة ابل',
              onPressed: () {},
            ),
            SizedBox(height: 16),
            SocialLoginButton(
              image: 'assets/images/facebook_icon.svg',
              title: 'تسجيل بواسطة فيسبوك',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
