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
            padding: const EdgeInsets.all(6),

            child: TabBar(
              dividerColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
              padding: EdgeInsets.zero,
              labelPadding: const EdgeInsets.symmetric(horizontal: 8),

              tabs: const [
                Tab(child: _CustomTab(text: 'All')),
                Tab(child: _CustomTab(text: 'Tshirts')),
                Tab(child: _CustomTab(text: 'Jeans')),
                Tab(child: _CustomTab(text: 'Shoes')),
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

class _CustomTab extends StatelessWidget {
  final String text;
  const _CustomTab({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(text),
    );
  }
}
