import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hup/core/services/get_it_service.dart';
import 'package:fruits_hup/core/widgets/build_custom_app_bar.dart';
import 'package:fruits_hup/feature/auth/domain/repo/auth_repo.dart';
import 'package:fruits_hup/feature/auth/presentation/manager/signup_cubit/sign_up_cubit.dart';
import 'package:fruits_hup/feature/auth/presentation/view/widgets/signup_view_body_bloc_consumer.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'SignUp';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignUpCubit>(
      create: (context) => SignUpCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, 'حساب جديد'),

        body: SignUpViewBodyBuildConsumer(),
      ),
    );
  }
}
