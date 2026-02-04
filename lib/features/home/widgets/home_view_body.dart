import 'package:e_commerce_app/core/theming/app_fonts.dart';
import 'package:e_commerce_app/features/home/widgets/search_section.dart';
import 'package:e_commerce_app/features/home/widgets/tap_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Discover', style: AppFonts.font32w600),
          Gap(16),
          SearchSection(),
          Gap(16),
          TapBar(),
        ],
      ),
    );
  }
}
