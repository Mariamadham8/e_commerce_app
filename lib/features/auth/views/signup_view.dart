import 'package:e_commerce_app/features/auth/views/widgets/signup_body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body: Padding(padding: EdgeInsets.all(16), child: SignupBody()),
      ),
    );
  }
}
