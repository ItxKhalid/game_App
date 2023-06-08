import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Utils/app_style.dart';
import '../../Utils/color_constant.dart';
import '../../Utils/image_constant.dart';
import '../../widgets/Sizebox/sizedboxheight.dart';
import '../../widgets/Sizebox/sizedboxwidth.dart';
import '../../widgets/customtext.dart';

class LiveStreamActiveScreen extends StatelessWidget {
  const LiveStreamActiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: 375.w,
        height: 713.h,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(AppImages.livestream),
          fit: BoxFit.fill,
        )),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: AppColors.backbutton,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.iconcolor,
                      size: 20.w,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Image.asset(AppImages.john),
                    ),
                    CustomSizedBoxWidth(width: 5.w),
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
                  child: Center(
                    child: CustomText(
                        textStyle: AppStyle.textStyle11SemiBoldWhite600,
                        title: 'Follow'),
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: AppColors.backbutton,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                      child: Image.asset(
                    AppImages.expandvctr,
                    height: 25.h,
                  )),
                ),
              ]),
        ),
      ),
    ));
  }
}
