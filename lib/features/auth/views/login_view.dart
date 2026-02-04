import 'package:e_commerce_app/features/auth/views/widgets/login_screen_body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: LoginScreenBody()));
  }
}
