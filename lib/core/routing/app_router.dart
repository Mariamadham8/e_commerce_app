import 'package:e_commerce_app/features/auth/views/login_view.dart';
import 'package:e_commerce_app/features/auth/views/signup_view.dart';
import 'package:e_commerce_app/features/home/views/address_info_view.dart';
import 'package:e_commerce_app/features/home/views/home_view.dart';
import 'package:e_commerce_app/features/home/views/item_details_view.dart';
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
    initialLocation: login,
    routes: [
      GoRoute(path: login, builder: (context, state) => const LoginScreen()),

      GoRoute(path: signup, builder: (context, state) => const SignupView()),

      GoRoute(path: home, builder: (context, state) => const HomeView()),

      GoRoute(
        path: itemDetails,
        builder: (context, state) => const ItemDetailsView(),
      ),

      GoRoute(
        path: addressInfo,
        builder: (context, state) => const AddressInfoView(),
      ),
    ],
  );
}
