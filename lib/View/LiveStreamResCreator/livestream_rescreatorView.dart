import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/Utils/color_constant.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/customtext.dart';
import '../../widgets/custom_text_form_field.dart';
import '../StreamComments/StreamComponents/StreamCmntsRow1.dart';
import '../StreamComments/StreamComponents/StreamCmntsRow3.dart';
import 'ResCreatorComponents/managestream.dart';

class LiveStreamResCreator extends StatefulWidget {
  const LiveStreamResCreator({super.key});

  @override
  State<LiveStreamResCreator> createState() => _LiveStreamResCreatorState();
}

class _LiveStreamResCreatorState extends State<LiveStreamResCreator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaflodbgcolor,
        body: Column(
          children: [
            Container(
              height: 220.h,
              width: 375.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.streamcomnts),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
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
            CustomSizedBoxHeight(height: 12.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  StreamCmntsRow1(),
                  CustomSizedBoxHeight(height: 26.h),
                  ManageStream(),
                  CustomSizedBoxHeight(height: 26.h),
                  CustomText(
                      textStyle: AppStyle.textStyle14whiteSemiBold,
                      title: "Live chat room"),
                  CustomSizedBoxHeight(height: 8.h),
                  StreamCmntsRow3()
                ],
              ),
            ),
            Spacer(),
            Container(
                color: AppColors.scaflodbgcolor,
                padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 23.h),
                child: CustomTextFormField()),
          ],
        ),
      ),
    );
  }
}
