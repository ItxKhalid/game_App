import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Utils/app_style.dart';
import '../../../Utils/color_constant.dart';
import '../../../Utils/image_constant.dart';
import '../../../widgets/Sizebox/sizedboxheight.dart';
import '../../../widgets/Sizebox/sizedboxwidth.dart';

import '../../../widgets/customtext.dart';

class StreamCmntsRow2 extends StatelessWidget {

   Function()? ontap;

   StreamCmntsRow2({this.ontap});

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
        GestureDetector(
          onTap: ontap,
          child: Container(
            height: 28.h,
            width: 87.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff2B59FE),
                      Color(0xff3485FF),
                    ])),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 20.w,
                ),
                CustomSizedBoxWidth(width: 5.w),
                CustomText(
                    textStyle: AppStyle.textStyle11SemiBoldWhite600,
                    title: 'Support'),
              ],
            ),
          ),
        ),
        Container(
          height: 28.h,
          width: 87.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.indigoAccent,
                    AppColors.mainColor,
                    AppColors.mainColor,
                  ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.person_add,
                color: Colors.white,
                size: 20.w,
              ),
              CustomSizedBoxWidth(width: 5.w),
              CustomText(
                  textStyle: AppStyle.textStyle11SemiBoldWhite600,
                  title: 'Follow'),
            ],
          ),
        ),
      ],
    );
  }
}
