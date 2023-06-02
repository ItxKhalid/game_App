import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Utils/app_style.dart';
import '../../../Utils/color_constant.dart';
import '../../../Utils/image_constant.dart';
import '../../../widgets/customtext.dart';

class TopStreamsListView extends StatelessWidget {
  const TopStreamsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 264,
      height: 140,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Stack(
          children: [
            Image.asset(AppImages.fortnite,fit: BoxFit.cover,width: double.infinity,),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors:[
                          Colors.transparent,
                          Colors.black.withOpacity(0.25),
                          AppColors.black.withOpacity(0.6),
                          AppColors.black,
                        ]
                    )
                ),
              ),
            ),
            Positioned(
              top: 12.h,
              right: 11.w,
              child: Container(
                width: 32,
                height: 14,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Center(
                  child: Text(
                    'Live',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 16.h,
              left: 12.w,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.whiteA700,width: 1.5) ,
                      image: DecorationImage(
                        image: AssetImage(AppImages.imgImage11),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      CustomText(
                          textStyle: AppStyle.textStyle10Regular,
                          title: 'anthonyplay'
                      ),
                      CustomText(
                          textStyle: AppStyle.textStyle12Regular,
                          title: 'My first Cratch video'
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
