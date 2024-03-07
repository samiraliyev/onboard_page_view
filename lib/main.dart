import 'package:flutter/material.dart';
import 'package:onboard_page/Constants/Colors/app_colors.dart';
import 'package:onboard_page/Screens/SplashScreen/splash_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboard Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: const SplashPageView(),
    );
  }
}
