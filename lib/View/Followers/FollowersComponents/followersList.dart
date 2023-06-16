import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game/Utils/image_constant.dart';
import '../../../Utils/app_style.dart';
import '../../../Utils/color_constant.dart';
import '../../../widgets/Sizebox/sizedboxheight.dart';
import '../../../widgets/Sizebox/sizedboxwidth.dart';
import '../../../widgets/customtext.dart';

// ignore: must_be_immutable
class FollowersList extends StatelessWidget {
  String imagepath;
  String name;
  String followers;

  FollowersList({
    Key? key,
    required this.imagepath,
    required this.name,
    required this.followers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipRRect(
              child: CircleAvatar(
                child: Image.asset(imagepath),
              ),
            ),
            CustomSizedBoxWidth(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    textStyle: AppStyle.textStyle12regularWhite,
                    title: name),
                CustomSizedBoxHeight(height: 3.w),
                CustomText(
                    textStyle: AppStyle.textStyle11SemiBoldBlack,
                    title: followers),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xff2B59FE),
                        Color(0xff3485FF),
                      ])),
              child: Icon(
                Icons.person_add,
                color: Colors.white,
                size: 22.w,
              ),
            ),
            CustomSizedBoxWidth(width: 10.w),
            Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.indigoAccent,
                        AppColors.mainColor,
                        AppColors.mainColor,
                      ])),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: SvgPicture.asset(AppImages.imgSearch,height: 5,width: 5),
              ),

            ),
          ],
        ),
      ],
    );
  }
}
