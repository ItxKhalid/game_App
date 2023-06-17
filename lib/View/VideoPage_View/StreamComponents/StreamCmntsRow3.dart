import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Utils/app_style.dart';
import '../../../Utils/image_constant.dart';
import '../../../widgets/Sizebox/sizedboxheight.dart';
import '../../../widgets/Sizebox/sizedboxwidth.dart';
import '../../../widgets/customtext.dart';

class StreamCmntsRow3 extends StatelessWidget {
  const StreamCmntsRow3({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 16.r,
          child: Image.asset(AppImages.john),
        ),
        CustomSizedBoxWidth(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomText(
                    textStyle: AppStyle.textStyle12regularWhite,
                    title: "SkidrowGames"),
                CustomSizedBoxWidth(width: 3.w),
                CustomText(
                    textStyle: AppStyle.textStyle11SemiBoldBlack,
                    title: "3m ago"),
              ],
            ),
            CustomSizedBoxHeight(height: 5.h),
            CustomText(
                textStyle: AppStyle.textStyle11SemiBoldBlack,
                title: "I love your show! Keep it up my friend!"),
          ],
        ),
      ],
    );
  }
}
class StreamCmntsRow4 extends StatelessWidget {
  const StreamCmntsRow4({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 16.r,
          child: Image.asset(AppImages.profilepic),
        ),
        CustomSizedBoxWidth(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomText(
                    textStyle: AppStyle.textStyle12regularWhite,
                    title: "For Fun "),
                CustomSizedBoxWidth(width: 3.w),
                CustomText(
                    textStyle: AppStyle.textStyle11SemiBoldBlack,
                    title: "5m ago"),
              ],
            ),
            CustomSizedBoxHeight(height: 5.h),
            CustomText(
                textStyle: AppStyle.textStyle11SemiBoldBlack,
                title: "I love your show! Keep it up my friend!"),
          ],
        ),
      ],
    );
  }
}
