import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/Utils/color_constant.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/customtext.dart';
import 'StreamComponents/StreamCmntsRow1.dart';
import 'StreamComponents/StreamCmntsRow2.dart';
import 'StreamComponents/StreamCmntsRow3.dart';

class StreamComments extends StatefulWidget {
  const StreamComments({super.key});

  @override
  State<StreamComments> createState() => _StreamCommentsState();
}

class _StreamCommentsState extends State<StreamComments> {
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
                  StreamCmntsRow2(),
                  CustomSizedBoxHeight(height: 26.h),
                  CustomText(
                      textStyle: AppStyle.textStyle14whiteSemiBold,
                      title: "Live chat room"),
                  CustomSizedBoxHeight(height: 8.h),
                  StreamCmntsRow3()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
