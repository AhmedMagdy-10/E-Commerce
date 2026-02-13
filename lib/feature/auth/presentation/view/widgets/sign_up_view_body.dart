import 'package:flutter/material.dart';
import 'package:fruits_hup/core/utils/app_colors.dart';
import 'package:fruits_hup/core/utils/app_text_styles.dart';
import 'package:fruits_hup/feature/auth/presentation/view/widgets/custom_text_form_filed.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 24, right: 16, left: 16),
        child: Column(
          children: [
            CustomTextFormField(
              hintText: 'الاسم كامل',
              textInputType: TextInputType.name,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xFFC9CECF)),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.min,

              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(4),
                  ),
                  side: BorderSide(width: 1, color: Color(0xffDDDFDF)),
                  visualDensity: VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                  ),
                  value: false,
                  onChanged: (value) {
                    value = true;
                  },
                ),
                SizedBox(height: 16),

                Text(
                  'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: TextStyles.semiBold13,
                ),

                Text(
                  maxLines: 2,
                  'الشروط والأحكام الخاصة بنا',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
