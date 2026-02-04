import 'package:e_commerce_app/core/routing/app_router.dart';
import 'package:e_commerce_app/features/auth/views/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        bottomAppBarTheme: BottomAppBarThemeData(
          shape: CircularNotchedRectangle(),
          elevation: 3,
          color: Colors.white10,
          padding: EdgeInsets.all(8),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
