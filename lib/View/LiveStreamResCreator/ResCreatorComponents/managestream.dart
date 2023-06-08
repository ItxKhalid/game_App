import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Utils/app_style.dart';
import '../../../Utils/image_constant.dart';
import '../../../widgets/Sizebox/sizedboxheight.dart';
import '../../../widgets/Sizebox/sizedboxwidth.dart';

import '../../../widgets/customtext.dart';

class ManageStream extends StatelessWidget {
  const ManageStream({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              child: Image.asset(AppImages.john),
            ),
            CustomSizedBoxWidth(width: 10.w),
            Column(
              children: [
                CustomText(
                    textStyle: AppStyle.textStyle12regularWhite,
                    title: "SkidrowGames"),
                CustomSizedBoxHeight(height: 5.h),
                CustomText(
                    textStyle: AppStyle.textStyle12offWhite,
                    title: "230k followers"),
              ],
            ),
          ],
        ),
        Container(
          height: 28.h,
          width: 120.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.r),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffA05CD8),
                    Color(0xffFF77A7),
                  ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.settings,
                color: Colors.white,
                size: 20.w,
              ),
              CustomSizedBoxWidth(width: 5.w),
              CustomText(
                  textStyle: AppStyle.textStyle11SemiBoldWhite600,
                  title: 'Manage Stream'),
            ],
          ),
        ),
      ],
    );
  }
}
