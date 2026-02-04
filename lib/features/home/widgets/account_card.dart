import 'package:e_commerce_app/core/theming/app_colors.dart';
import 'package:e_commerce_app/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const AccountCard({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, color: AppColors.blue, size: 24),
            const SizedBox(width: 12),
            Expanded(child: Text(title, style: AppFonts.font16w500)),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.darkgrey,
            ),
          ],
        ),
      ),
    );
  }
}
