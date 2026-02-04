import 'package:e_commerce_app/features/home/widgets/account_info_body.dart';
import 'package:flutter/material.dart';

class AccountInfoView extends StatelessWidget {
  const AccountInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(body: AccountInfoBody()));
  }
}
