import 'package:flutter/material.dart';

import '../../../Utils/app_style.dart';
import '../../../widgets/Sizebox/sizedboxheight.dart';
import '../../../widgets/customtext.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomSizedBoxHeight(height: 50),
      CustomText(
          textStyle: AppStyle.textStyle17Bold,
          title: 'JosefBenis'),
      CustomSizedBoxHeight(height: 10),
      CustomText(
          textStyle: AppStyle.textStyle9SemiBoldWhite,
          title: '308K Followers'),
      CustomSizedBoxHeight(height: 10),
      CustomText(
          textAlign: TextAlign.center,
          textStyle: AppStyle.textStyle11SemiBoldBlack,
          title:
          'Hi everyone, welcome to my Cratch channel! Enjoy my\nAxie infinity play!...'),
      CustomText(
          textStyle: AppStyle.textStyle12Regular,
          title: '... Show more'),
      CustomSizedBoxHeight(height: 30),
    ],);
  }
}
