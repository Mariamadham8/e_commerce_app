import 'package:e_commerce_app/core/routing/app_router.dart';
import 'package:e_commerce_app/core/theming/app_colors.dart';
import 'package:e_commerce_app/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRouter.itemDetails);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWkja0UFm0NHAMaztYI1fCOQY3OR9kdv_Maw&s',
                fit: BoxFit.cover,
                height: 140,
              ),
            ),

            Gap(8),
            Text('Shoes', style: AppFonts.font16w600),
            Gap(8),
            Text(
              '\$ 1,190',
              style: AppFonts.font16w500.copyWith(color: AppColors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
