import 'package:e_commerce_app/core/theming/app_colors.dart';
import 'package:e_commerce_app/core/theming/app_fonts.dart';
import 'package:e_commerce_app/core/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/core/widgets/custom_app_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ItemDetailsBody extends StatelessWidget {
  const ItemDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(title: 'Details'),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWkja0UFm0NHAMaztYI1fCOQY3OR9kdv_Maw&s',
                fit: BoxFit.cover,
                height: 200,
                width: 200,
              ),
            ),
          ),

          const Gap(12),

          Text('Fit Polo T Shirt', style: AppFonts.font24w600),

          const Gap(12),

          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber),
              const Gap(6),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '4.0/5 ',
                      style: AppFonts.font16w500.copyWith(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: '(45 reviews)',
                      style: AppFonts.font16w500.copyWith(
                        color: AppColors.darkgrey,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const Gap(14),

          Text(
            'Blue T Shirt . Good for All Men and Suits for All of Them. '
            'Blue T Shirt . Good for All Men and Suits for All of Them',
            softWrap: true,
            style: AppFonts.font16w400.copyWith(color: AppColors.darkgrey),
          ),

          const Gap(30),

          Divider(color: AppColors.grey, thickness: 1),

          const Gap(30),

          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: AppFonts.font16w400.copyWith(
                      color: AppColors.darkgrey,
                    ),
                  ),
                  const Gap(4),
                  Text('\$ 1,190', style: AppFonts.font24w600),
                ],
              ),

              const Gap(16),

              Expanded(
                child: CustomAppButton(
                  onPressed: () {},
                  text: 'Add to Cart',
                  icon: Icons.shopping_bag_outlined,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
