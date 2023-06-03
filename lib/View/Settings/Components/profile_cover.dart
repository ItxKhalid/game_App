import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/Provider/settings_provider.dart';
import 'package:provider/provider.dart';

import '../../../Utils/color_constant.dart';
import '../../../Utils/image_constant.dart';
import '../../../widgets/custom_icon_button.dart';

class ProfileCover extends StatelessWidget {
  const ProfileCover({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (context, profilecover, child) {
        return Container(
          height: 108.h,
          width: 310,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            image: DecorationImage(
              image: AssetImage(AppImages.profilecover),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(12.w),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButtonWidget(
                  ontap: () {},
                  height: 35.h,
                  width: 35.w,
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
                      profilecover.chooseImage();
                    },
                    child: Icon(Icons.edit,
                        color: AppColors.whiteA700, size: 24.w),
                  )),
            ),
          ),
        );
      },
    );
  }
}
