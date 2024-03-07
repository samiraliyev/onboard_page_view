import 'package:flutter/material.dart';
import 'package:onboard_page/Constants/Colors/app_colors.dart';
import 'package:onboard_page/Screens/HomePage/home_page_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        final SharedPreferences preferences =
            await SharedPreferences.getInstance();
        await preferences
            .setBool('onboard', true)
            .then((_) => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePageView(),
                  ),
                ));
      },
      child: const Text(
        'Skip',
        style: TextStyle(
          color: AppColors.white,
        ),
      ),
    );
  }
}
