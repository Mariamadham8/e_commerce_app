import 'package:e_commerce_app/core/theming/app_colors.dart';
import 'package:e_commerce_app/features/home/widgets/Tshirts_container.dart';
import 'package:flutter/material.dart';

class TapBar extends StatefulWidget {
  const TapBar({super.key});

  @override
  State<TapBar> createState() => _TapBarState();
}

class _TapBarState extends State<TapBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() => _selectedIndex = _tabController.index);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tabs = ['All', 'Tshirts', 'Jeans', 'Shoes'];

    return Column(
      children: [
        TabBar(
          controller: _tabController,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          dividerColor: Colors.transparent,
          indicatorColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: const BoxDecoration(),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          labelPadding: const EdgeInsets.symmetric(horizontal: 4),
          tabs: List.generate(
            tabs.length,
            (index) => Tab(
              child: _CustomTab(
                text: tabs[index],
                isSelected: _selectedIndex == index,
              ),
            ),
          ),
        ),

        const SizedBox(height: 16),

        SizedBox(
          height: 600,
          child: TabBarView(
            controller: _tabController,
            children: [
              TshirtsContainer(),
              TshirtsContainer(),
              TshirtsContainer(),
              TshirtsContainer(),
            ],
          ),
        ),
      ],
    );
  }
}

class _CustomTab extends StatelessWidget {
  final String text;
  final bool isSelected;

  const _CustomTab({required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.blue : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: isSelected
            ? Border.all(color: Colors.transparent)
            : Border.all(color: Colors.grey.shade300),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
    );
  }
}
