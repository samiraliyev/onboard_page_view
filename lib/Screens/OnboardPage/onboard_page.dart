import 'package:flutter/material.dart';
import 'package:onboard_page/Constants/Colors/app_colors.dart';
import 'package:onboard_page/Extensions/size_extension.dart';
import 'package:onboard_page/Screens/OnboardPage/Widgets/page_indicator.dart';
import 'package:onboard_page/Screens/OnboardPage/onboard_page_view.dart';
import 'package:onboard_page/Widgets/skip_button.dart';

import '../../Widgets/control_button.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  late final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          OnboardPageView(pageController: _pageController),
          24.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SkipButton(),
              DotIndicator(pageController: _pageController),
              48.h,
              ControlButton(pageController: _pageController),
            ],
          ),
          24.h
        ],
      ),
    );
  }
}
