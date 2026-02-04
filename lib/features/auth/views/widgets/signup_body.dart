import 'package:e_commerce_app/core/helpers/validators.dart';
import 'package:e_commerce_app/core/routing/app_router.dart';
import 'package:e_commerce_app/core/theming/app_colors.dart';
import 'package:e_commerce_app/core/theming/app_fonts.dart';
import 'package:e_commerce_app/core/widgets/custom_app_button.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }

  String? confirmPasswordValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Confirm your password";
    }
    if (value != passController.text) {
      return "Passwords do not match";
    }
    return null;
  }

  void signup() {
    if (formKey.currentState!.validate()) {
      print("Signup Success");
      print("Username: ${usernameController.text}");
      print("Email: ${emailController.text}");
      print("Password: ${passController.text}");

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
            const Text('Create an account', style: AppFonts.font32w600),
            const Gap(8),
            Text(
              'Let’s create your account.',
              style: AppFonts.font16w400.copyWith(color: AppColors.grey),
            ),
            const Gap(24),

            // Username
            Text('User Name', style: AppFonts.font16w500),
            const Gap(4),
            CustomTextFormField(
              controller: usernameController,
              hintText: 'Enter your username',
              validator: usernameValidator,
            ),
            const Gap(16),

            Text('Email', style: AppFonts.font16w500),
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
            const Gap(16),

            Text('Confirm Password', style: AppFonts.font16w500),
            const Gap(4),
            CustomTextFormField(
              controller: confirmPassController,
              hintText: 'Re-enter your password',
              isPassword: true,
              validator: confirmPasswordValidator,
            ),
            const Gap(24),

            CustomAppButton(
              text: 'Sign Up',
              textColor: Colors.white,
              onPressed: signup,
            ),

            const Gap(16),

            Center(
              child: RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: AppFonts.font16w400.copyWith(color: AppColors.grey),
                  children: [
                    TextSpan(
                      text: "Login",
                      style: AppFonts.font16w500.copyWith(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Navigate to login screen");
                          context.push(AppRouter.login);
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
