import 'package:onboard_page/Constants/Strings/app_strings.dart';

class OnboardModel {
  String img;
  String title;
  String desc;
  OnboardModel({
    required this.img,
    required this.title,
    required this.desc,
  });

  static List<OnboardModel> onboardItems = [
    OnboardModel(
      img: AppString.onboard1,
      title: AppString.title1,
      desc: AppString.desc1,
    ),
    OnboardModel(
      img: AppString.onboard2,
      title: AppString.title2,
      desc: AppString.desc2,
    ),
    OnboardModel(
      img: AppString.onboard3,
      title: AppString.title3,
      desc: AppString.desc3,
    ),
  ];
}
