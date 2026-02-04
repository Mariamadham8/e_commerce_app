import 'package:e_commerce_app/features/home/widgets/item_card.dart';
import 'package:flutter/material.dart';

class TshirtsContainer extends StatelessWidget {
  const TshirtsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => ItemCard(),
    );
  }
}
