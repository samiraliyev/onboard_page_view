import 'package:flutter/material.dart';
import 'package:onboard_page/Constants/Colors/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../Models/onboard_model.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final items = OnboardModel.onboardItems;
    return SmoothPageIndicator(
      controller: pageController,
      count: items.length,
      effect: const WormEffect(
        activeDotColor: AppColors.dotColor,
        dotHeight: 12,
        dotWidth: 12,
        spacing: 4,
      ),
      onDotClicked: (i) => pageController.jumpToPage(i),
    );
  }
}
