// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:onboard_page/Constants/Colors/app_colors.dart';

class PageControlButtons extends StatelessWidget {
  const PageControlButtons({
    super.key,
    required this.onTap,
    required this.icon,
  });
  final void Function() onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: AppColors.nextBtnColor,
        foregroundColor: AppColors.white,
      ),
      onPressed: onTap,
      icon: Icon(
        icon,
      ),
    );
  }
}
