import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hup/core/helper/functions/show_toast_state.dart';
import 'package:fruits_hup/feature/auth/presentation/manager/signup_cubit/sign_up_cubit.dart';
import 'package:fruits_hup/feature/auth/presentation/manager/signup_cubit/sign_up_cubit_states.dart';
import 'package:fruits_hup/feature/auth/presentation/view/widgets/sign_up_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpViewBodyBuildConsumer extends StatelessWidget {
  const SignUpViewBodyBuildConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpCubitStates>(
      listener: (context, state) {
        if (state is SignUpErrorState) {
          showToast(text: state.message, state: ToastStates.error);
        } else if (state is SignUpSuccessState) {
          showToast(text: 'تم إنشاء الحساب بنجاح', state: ToastStates.success);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignUpLoadingState ? true : false,
          child: SignUpViewBody(),
        );
      },
    );
  }
}
