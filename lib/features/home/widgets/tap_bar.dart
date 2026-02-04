import 'package:e_commerce_app/core/theming/app_colors.dart';
import 'package:e_commerce_app/features/home/widgets/Tshirts_container.dart';
import 'package:flutter/material.dart';

class TapBar extends StatelessWidget {
  const TapBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: TabBar(
              indicatorColor: Colors.transparent,
              indicator: BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColors.blue,
                borderRadius: BorderRadius.circular(2),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: const [
                Tab(text: 'All'),
                Tab(text: 'Tshirts'),
                Tab(text: 'Jeans'),
                Tab(text: 'Shoes'),
              ],
            ),
          ),

          const SizedBox(height: 16),

          SizedBox(
            height: 600,
            child: TabBarView(
              children: [
                TshirtsContainer(),
                TshirtsContainer(),
                TshirtsContainer(),
                TshirtsContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
