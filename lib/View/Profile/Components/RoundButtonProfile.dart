import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Utils/color_constant.dart';
import '../../../Utils/image_constant.dart';
import '../../../widgets/Sizebox/sizedboxwidth.dart';
import '../../../widgets/custom_icon_button.dart';

class RoundButtonProfile extends StatelessWidget {
  const RoundButtonProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButtonWidget(
          ontap: () {},
          height: 32,
          width: 32,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.mainColor,
                AppColors.indigo,
                AppColors.indigo,
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
          widget:  Icon(Icons.favorite,color: AppColors.whiteA700,size: 18),
        ),
        CustomSizedBoxWidth(width: 20),
        IconButtonWidget(
            ontap: () {},
            height: 50,
            width: 50,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.mainColor,
                  AppColors.indigo.withOpacity(0.7),
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
            widget:  Icon(Icons.person_add,color: AppColors.whiteA700,size: 24)
        ),
        CustomSizedBoxWidth(width: 20),
        IconButtonWidget(
          ontap: () {},
          height: 32,
          width: 32,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.mainColor,
                AppColors.indigo,
                AppColors.indigo,
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
          widget: SvgPicture.asset(AppImages.imgSearch,height: 14),
        ),
      ],
    );
  }
}
