import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hup/core/widgets/custom_button.dart';
import 'package:fruits_hup/feature/auth/presentation/manager/signup_cubit/sign_up_cubit.dart';
import 'package:fruits_hup/feature/auth/presentation/view/widgets/custom_text_form_filed.dart';
import 'package:fruits_hup/feature/auth/presentation/view/widgets/have_an_account.dart';
import 'package:fruits_hup/feature/auth/presentation/view/widgets/terms_and_conditions_widget.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 24, right: 16, left: 16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CustomTextFormField(
                controller: nameController,
                hintText: 'الاسم كامل',
                textInputType: TextInputType.name,
                onSaved: (value) {
                  nameController.text = value!;
                },
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                controller: emailController,
                onSaved: (value) {
                  emailController.text = value!;
                },
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                controller: passwordController,
                onSaved: (value) {
                  passwordController.text = value!;
                },
                hintText: 'كلمة المرور',
                textInputType: TextInputType.visiblePassword,
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xFFC9CECF),
                ),
              ),
              SizedBox(height: 16),
              TermsAndConditionsWidget(),
              SizedBox(height: 30),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SignUpCubit>().createUserWithEmailAndPassword(
                      nameController.text,
                      emailController.text,
                      passwordController.text,
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                data: 'إنشاء حساب جديد',
              ),
              SizedBox(height: 26),
              HaveAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
