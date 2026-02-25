import 'package:e_commerce_app/features/home/widgets/item_card.dart';
import 'package:flutter/material.dart';

class TshirtsContainer extends StatelessWidget {
  const TshirtsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75, // ✅ جرب 0.7 أو 0.8 حسب شاشتك
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),

      itemBuilder: (context, index) => ItemCard(),
    );
  }
}
