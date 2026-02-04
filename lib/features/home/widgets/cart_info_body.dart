import 'package:e_commerce_app/core/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/core/widgets/custom_app_button.dart';
import 'package:e_commerce_app/features/home/widgets/added_item_card.dart';
import 'package:e_commerce_app/features/home/widgets/chick_out_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartInfoBody extends StatelessWidget {
  const CartInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(title: 'Cart'),
          Gap(20),
          AddedItmeCard(),
          Gap(60),
          CartSummaryContainer(subTotal: 5870, vat: 0.00, shippingFee: 80),
          Gap(60),
          CustomAppButton(
            text: 'Go To Checkout',
            onPressed: () {},
            iconAfterText: true,
            icon: Icons.arrow_forward_rounded,
          ),
        ],
      ),
    );
  }
}
