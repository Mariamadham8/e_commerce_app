import 'package:e_commerce_app/core/routing/app_router.dart';
import 'package:e_commerce_app/core/theming/app_colors.dart';
import 'package:e_commerce_app/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'account_card.dart';

class AccountInfoBody extends StatelessWidget {
  const AccountInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        AccountCard(
          icon: Icons.shopping_bag_outlined,
          title: "My Orders",
          onTap: () {
            // action here
          },
        ),
        AccountCard(
          icon: Icons.person_outline,
          title: "My Details",
          onTap: () {},
        ),
        AccountCard(
          icon: Icons.home_outlined,
          title: "Address Book",
          onTap: () {
            context.push(AppRouter.addressInfo);
          },
        ),
        AccountCard(icon: Icons.help_outline, title: "FAQs", onTap: () {}),
        AccountCard(
          icon: Icons.headset_mic_outlined,
          title: "Help Center",
          onTap: () {},
        ),
        const SizedBox(height: 20),
        Center(
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.logout, color: AppColors.red),
            label: Text(
              "Logout",
              style: AppFonts.font16w500.copyWith(color: AppColors.red),
            ),
          ),
        ),
      ],
    );
  }
}
