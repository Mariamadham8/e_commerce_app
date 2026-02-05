import 'package:e_commerce_app/features/home/widgets/address_info_body.dart';
import 'package:flutter/material.dart';

class AddressInfoView extends StatelessWidget {
  const AddressInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(body: AddressBody()));
  }
}
