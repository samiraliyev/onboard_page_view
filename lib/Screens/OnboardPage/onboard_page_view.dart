// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:onboard_page/Screens/OnboardPage/Widgets/onboard_page_item.dart';

import '../../Models/onboard_model.dart';

class OnboardPageView extends StatelessWidget {
  const OnboardPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  @override
  Widget build(BuildContext context) {
    final items = OnboardModel.onboardItems;
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        itemCount: items.length,
        itemBuilder: (_, i) => OnboardPageItem(onboardItems: items[i]),
      ),
    );
  }
}
