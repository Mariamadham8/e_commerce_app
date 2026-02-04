import 'package:e_commerce_app/features/home/widgets/cart_info_body.dart';
import 'package:flutter/material.dart';

class CartInfoView extends StatelessWidget {
  const CartInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(padding: EdgeInsets.all(24), child: CartInfoBody()),
      ),
    );
  }
}
