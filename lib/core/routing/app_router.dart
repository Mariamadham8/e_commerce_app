import 'package:e_commerce_app/features/auth/views/login_view.dart';
import 'package:e_commerce_app/features/auth/views/signup_view.dart';
import 'package:e_commerce_app/features/home/views/home_view.dart';
import 'package:e_commerce_app/features/home/views/item_details_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const login = '/login';
  static const signup = '/signup';
  static const home = '/home';
  static const itemDetails = '/itemDetails';
  static const cartDetails = '/cartDetails';
  static const addressInfo = '/addressInfo';
  static const accountInfo = '/accountInfo';

  final GoRouter routes = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(path: login, builder: (context, state) => const LoginScreen()),

      GoRoute(path: signup, builder: (context, state) => const SignupView()),

      GoRoute(path: home, builder: (context, state) => const HomeView()),

      GoRoute(
        path: itemDetails,
        builder: (context, state) => const ItemDetailsView(),
      ),

      GoRoute(
        path: cartDetails,
        builder: (context, state) => const CartDetailsScreen(),
      ),

      GoRoute(
        path: addressInfo,
        builder: (context, state) => const AddressInfoScreen(),
      ),

      GoRoute(
        path: accountInfo,
        builder: (context, state) => const AccountInfoScreen(),
      ),
    ],
  );
}

/* =================== Screens Placeholder =================== */

class CartDetailsScreen extends StatelessWidget {
  const CartDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Cart Details Screen")));
  }
}

class AddressInfoScreen extends StatelessWidget {
  const AddressInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Address Info Screen")));
  }
}

class AccountInfoScreen extends StatelessWidget {
  const AccountInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Account Info Screen")));
  }
}
