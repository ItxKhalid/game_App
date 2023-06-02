import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/customButton.dart';
import 'package:game/widgets/customtext.dart';

import '../../../Utils/color_constant.dart';

class CarouselSliderContainer extends StatelessWidget {
  const CarouselSliderContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Container(
        height: 167,
        width: 340,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.whiteA700,
                AppColors.whiteA700,
                AppColors.black,
                AppColors.black,
                AppColors.black,
              ]),
          borderRadius: BorderRadius.circular(14),
          color: Colors.blue, // Replace with your desired background color
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 141.h,
                width: 156.w,
                decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                        textStyle: AppStyle.textStyle12regularWhite,
                        title: 'WATCH PUBG GLOBAL\nCHAMPIONSHIP'),
                    CustomSizedBoxHeight(height: 5),
                    CustomText(
                        textStyle: AppStyle.textStyle9SemiBoldWhite,
                        title:
                            'Enjoy watching the biggest PUBG\n event of thes year'),
                    CustomSizedBoxHeight(height: 30),
                    CustomButton(
                      height: 27,
                      width: 103,
                      color: AppColors.whiteA700,
                      AppStyle: AppStyle.textStyle10SemiBoldBlack,
                      title: 'Watch Now',
                      ontap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Image.asset(AppImages.pubg,width: 150,height: 150,),
            )
          ],
        ),
      ),
    );
  }
}
