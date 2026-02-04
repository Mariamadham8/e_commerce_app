import 'package:e_commerce_app/core/theming/app_colors.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextFormField(
            hintText: 'Search for clothes...',
            prefixIcon: Icon(Icons.search, size: 20, color: AppColors.grey),
          ),
        ),
        Gap(8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.blue,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.filter_hdr, color: Colors.white, size: 30),
          ),
        ),
      ],
    );
  }
}
