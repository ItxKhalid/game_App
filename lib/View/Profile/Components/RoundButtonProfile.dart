import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';

import '../../../Utils/color_constant.dart';
import '../../../Utils/image_constant.dart';
import '../../../widgets/Sizebox/sizedboxwidth.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/customtext.dart';

class RoundButtonProfile extends StatelessWidget {
  RoundButtonProfile(
      {Key? key, this.onTapFollow, this.onTapMessage, this.onTapSupport})
      : super(key: key);

  Function()? onTapSupport;
  Function()? onTapFollow;
  Function()? onTapMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButtonWidget(
              ontap: onTapSupport!,
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
              widget:
                  Icon(Icons.favorite, color: AppColors.whiteA700, size: 18),
            ),
            CustomSizedBoxWidth(width: 20),
            IconButtonWidget(
                ontap: onTapFollow!,
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
                widget: Icon(Icons.person_add,
                    color: AppColors.whiteA700, size: 24)),
            CustomSizedBoxWidth(width: 20),
            IconButtonWidget(
              ontap: onTapMessage!,
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
              widget: SvgPicture.asset(AppImages.imgSearch, height: 14),
            ),
          ],
        ),
        CustomSizedBoxHeight(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
                title: 'Support', textStyle: AppStyle.textStyle8White600),
            CustomSizedBoxWidth(width: 38),
            CustomText(title: 'Follow', textStyle: AppStyle.textStyle8White600),
            CustomSizedBoxWidth(width: 35),
            CustomText(
                title: 'Message', textStyle: AppStyle.textStyle8White600),
          ],
        ),
      ],
    );
  }
}
