// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:onboard_page/Constants/Colors/app_colors.dart';
import 'package:onboard_page/Extensions/size_extension.dart';

import 'package:onboard_page/Models/onboard_model.dart';

class OnboardPageItem extends StatelessWidget {
  const OnboardPageItem({
    super.key,
    required this.onboardItems,
  });
  final OnboardModel onboardItems;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(onboardItems.img),
          30.h,
          Center(
            child: Text(
              onboardItems.title,
              style: const TextStyle(
                color: AppColors.titleColor,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          14.h,
          Center(
            child: Text(
              onboardItems.desc,
              style: const TextStyle(
                color: AppColors.descTextColor,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
