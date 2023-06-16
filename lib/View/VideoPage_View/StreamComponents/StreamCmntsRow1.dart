import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Utils/app_style.dart';
import '../../../Utils/color_constant.dart';
import '../../../widgets/Sizebox/sizedboxheight.dart';
import '../../../widgets/Sizebox/sizedboxwidth.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/customtext.dart';

class StreamCmntsRow1 extends StatelessWidget {
  const StreamCmntsRow1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
                textStyle: AppStyle.textStyle14whiteSemiBold,
                title: "Playing Sprinterlands"),
            CustomSizedBoxHeight(height: 5.h),
            CustomText(
                textStyle: AppStyle.textStyle12offWhite, title: "240K watching")
          ],
        ),
        Row(
          children: [
            Container(
              width: 40.w,
              height: 40.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: IconButtonWidget(
                  ontap: () {},
                  height: 50.h,
                  width: 50.w,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.mainColor,
                        AppColors.indigo.withOpacity(1),
                        AppColors.mainColor,
                      ]),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.mainColor,
                      blurRadius: 20.0, // soften the shadow
                      spreadRadius: -4, //extend the shadow
                      offset: const Offset(
                        0.0, // Move to right 10  horizontally
                        4.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                  widget: InkWell(
                    onTap: () {},
                    child: Icon(Icons.favorite,
                        color: AppColors.whiteA700, size: 22.w),
                  )),
            ),
            CustomSizedBoxWidth(width: 10.w),
            CustomText(textStyle: AppStyle.textStyle12offWhite, title: "240K")
          ],
        ),
      ],
    );
  }
}
