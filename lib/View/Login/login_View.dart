import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/Utils/color_constant.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/customtext.dart';
import 'package:get/get.dart';

import '../../BottomNavBar.dart';
import '../../widgets/customButton.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(AppImages.backLoginll),
          fit: BoxFit.fill,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomSizedBoxHeight(height: 40.h),
            Image.asset(
              AppImages.logoname,
              width: 150,
            ),
            CustomSizedBoxHeight(height: 410),
            CustomText(
              textStyle: AppStyle.textStyle13Regular,
              title:
                  'This party’s just getting started! Sign in to\n join the fun. ',
              textAlign: TextAlign.center,
              maxline: 2,
            ),
            CustomSizedBoxHeight(height: 20),
            CustomButton(
                ontap: () {
                  // Navigator.push(context ,MaterialPageRoute(builder: (context) => DashBoardScreen(),));
                },
                image: AppImages.metamask,
                title: 'MetaMask',
                AppStyle: AppStyle.textStyle14whiteSemiBold,
                // color: AppColors.mainColor,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.mainColor.withOpacity(0.4),
                    AppColors.indigo.withOpacity(0.4),
                    AppColors.indigo.withOpacity(0.4),
                  ],
                )),
            CustomSizedBoxHeight(height: 20.h),
            CustomButton(
                ontap: () {
                  Get.to(() => DashBoardScreen());
                },
                AppStyle: AppStyle.textStyle14whiteSemiBold,
                image: AppImages.walletconnectpng,
                title: 'WalletConnect',
                // color: AppColors.mainColor,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.mainColor.withOpacity(0.4),
                    AppColors.indigo.withOpacity(0.4),
                    AppColors.indigo.withOpacity(0.4),
                  ],
                )),
            CustomSizedBoxHeight(height: 20.h),
          ],
        ),
      ),
    );
  }
}
