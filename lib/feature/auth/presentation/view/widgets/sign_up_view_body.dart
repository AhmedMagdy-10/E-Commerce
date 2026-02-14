import 'package:flutter/material.dart';
import 'package:fruits_hup/feature/auth/presentation/view/widgets/custom_text_form_filed.dart';
import 'package:fruits_hup/feature/auth/presentation/view/widgets/terms_and_conditions_widget.dart';

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
            TermsAndConditionsWidget(),
          ],
        ),
      ),
    );
  }
}
