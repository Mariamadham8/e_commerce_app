import 'package:e_commerce_app/core/theming/app_colors.dart';
import 'package:e_commerce_app/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AddedItmeCard extends StatelessWidget {
  const AddedItmeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.grey),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWkja0UFm0NHAMaztYI1fCOQY3OR9kdv_Maw&s',
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
          ),

          const Gap(16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Regular Fit Slogan',
                        style: AppFonts.font14w600,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete_outline_rounded,
                        color: AppColors.red,
                      ),
                    ),
                  ],
                ),

                const Gap(4),

                Text(
                  'Size L',
                  style: AppFonts.font12w400.copyWith(
                    color: AppColors.darkgrey,
                  ),
                ),

                const Gap(14),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$ 1,190', style: AppFonts.font16w600),

                    Row(
                      children: [
                        _buildQuantityButton(icon: Icons.add, onPressed: () {}),

                        const Gap(10),

                        Text('2', style: AppFonts.font16w400),

                        const Gap(10),

                        _buildQuantityButton(
                          icon: Icons.remove,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuantityButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return IconButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(6)),
        minimumSize: MaterialStateProperty.all(const Size(34, 34)),
        side: MaterialStateProperty.all(
          BorderSide(color: AppColors.grey, width: 1),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      onPressed: onPressed,
      icon: Icon(icon, size: 18),
    );
  }
}
