import 'package:flutter/material.dart';
import 'package:fruits_hup/core/widgets/build_custom_app_bar.dart';
import 'package:fruits_hup/feature/auth/presentation/view/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'SignUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'حساب جديد'),

      body: SignUpViewBody(),
    );
  }
}
