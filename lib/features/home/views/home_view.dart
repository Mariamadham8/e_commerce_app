import 'package:e_commerce_app/features/home/views/account_info_view.dart';
import 'package:e_commerce_app/features/home/views/cart_info_view.dart';
import 'package:e_commerce_app/features/home/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeViewBody(),
    const CartInfoView(),
    const AccountInfoView(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _currentIndex == 0
            ? Padding(
                padding: const EdgeInsets.all(24),
                child: _pages[_currentIndex],
              )
            : _pages[_currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
