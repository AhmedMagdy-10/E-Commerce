import 'package:flutter/material.dart';
import 'package:fruits_hup/core/utils/app_colors.dart';
import 'package:fruits_hup/core/utils/app_text_styles.dart';
import 'package:fruits_hup/core/widgets/custom_button.dart';
import 'package:fruits_hup/feature/auth/presentation/view/widgets/custom_text_form_filed.dart';

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
              textInputType: TextInputType.emailAddress,
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'لا تمتلك حساب ؟',
                  style: TextStyles.semiBold16.copyWith(
                    color: Color(0xFF949D9E),
                  ),
                ),
                Text(
                  'قم بانشاء حساب ',
                  style: TextStyles.semiBold16.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 33),
          ],
        ),
      ),
    );
  }
}
