import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/Provider/settings_provider.dart';
import 'package:provider/provider.dart';

import '../../../Utils/app_style.dart';
import '../../../Utils/color_constant.dart';
import '../../../Utils/image_constant.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/customtext.dart';

class AvatarRow extends StatelessWidget {
  const AvatarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (context, provider, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CustomText(
                    textStyle: AppStyle.textStyle14whiteSemiBold,
                    title: "Avatar"),
                SizedBox(height: 10.h),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40.r,
                      backgroundColor: Color(0xFFFFFFFF),
                      backgroundImage: AssetImage(AppImages.settingprofile),
                      child: provider.imageFile != null
                          ? ClipOval(
                              child: Image.file(
                                provider.imageFile!,
                                fit: BoxFit.cover,
                                width: 130.w,
                                height: 130.h,
                              ),
                            )
                          : const Center(
                              child: Text(''),
                            ),
                    ),
                    Positioned(
                      left: 52.w,
                      top: 4.h,
                      child: Container(
                        width: 26.w,
                        height: 26.h,
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
                              onTap: () {
                                provider.chooseImage();
                              },
                              child: Icon(Icons.edit,
                                  color: AppColors.whiteA700, size: 24.w),
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 160.w,
              height: 107.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  border: Border.all(color: AppColors.mainColor, width: 1)),
              child: Column(children: [
                SizedBox(height: 10.h),
                CustomText(
                    textStyle: AppStyle.textStyle12Regular, title: "Balance"),
                SizedBox(height: 15.h),
                //SvgPicture.asset(AppImages.logo),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.logopng),
                    SizedBox(width: 10.w),
                    CustomText(
                        textStyle: AppStyle.textStyle12Regular, title: "100"),
                  ],
                ),
                SizedBox(height: 6.h),
                Container(
                  height: 36.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff7449EF),
                        Color(0xffB260FB),
                      ],
                    ),
                  ),
                )
              ]),
            )
          ],
        );
      },
    );
  }
}
