import 'package:flutter/material.dart';
import 'package:fruits_hup/core/widgets/build_custom_app_bar.dart';
import 'package:fruits_hup/feature/auth/presentation/view/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'تسجيل الدخول'),

      body: LoginViewBody(),
    );
  }
}
