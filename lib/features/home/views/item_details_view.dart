import 'package:e_commerce_app/features/home/widgets/item_details_body.dart';
import 'package:flutter/material.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(padding: EdgeInsets.all(24), child: ItemDetailsBody()),
      ),
    );
  }
}
