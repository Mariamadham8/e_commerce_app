import 'package:e_commerce_app/core/helpers/validators.dart';
import 'package:e_commerce_app/core/routing/app_router.dart';
import 'package:e_commerce_app/core/theming/app_colors.dart';
import 'package:e_commerce_app/core/theming/app_fonts.dart';
import 'package:e_commerce_app/core/widgets/custom_app_button.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_feild.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  void login() {
    if (formKey.currentState!.validate()) {
      print("Login Success");
      print(emailController.text);
      print(passController.text);

      context.push(AppRouter.home);
    } else {
      print("Validation Failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login to your account', style: AppFonts.font32w600),
            const Gap(8),
            Text(
              'It’s great to see you again.',
              style: AppFonts.font16w400.copyWith(color: AppColors.grey),
            ),
            const Gap(24),

            Text('User Name', style: AppFonts.font16w500),
            const Gap(4),
            CustomTextFormField(
              controller: emailController,
              hintText: 'Enter your email address',
              keyboardType: TextInputType.emailAddress,
              validator: emailValidator,
            ),

            const Gap(16),

            Text('Password', style: AppFonts.font16w500),
            const Gap(4),
            CustomTextFormField(
              controller: passController,
              hintText: 'Enter your password',
              isPassword: true,
              validator: passwordValidator,
            ),

            const Gap(24),

            CustomAppButton(
              text: 'Login',
              textColor: Colors.white,
              onPressed: login,
            ),

            const Gap(16),

            Center(
              child: RichText(
                text: TextSpan(
                  text: "Don’t have an account? ",
                  style: AppFonts.font16w400.copyWith(color: AppColors.grey),
                  children: [
                    TextSpan(
                      text: "Join",
                      style: AppFonts.font16w500.copyWith(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.push(AppRouter.signup);
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
