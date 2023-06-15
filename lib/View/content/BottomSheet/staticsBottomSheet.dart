import 'package:flutter/material.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/custom_icon_button.dart';
import '../../../Utils/app_style.dart';
import '../../../Utils/color_constant.dart';
import '../../../Utils/image_constant.dart';
import '../../../widgets/customtext.dart';

class BottomSheetContentStatic extends StatefulWidget {
  BottomSheetContentStatic({Key? key, this.onTapNft}) : super(key: key);

  Function()? onTapNft;

  @override
  State<BottomSheetContentStatic> createState() =>
      _BottomSheetContentStaticState();
}

class _BottomSheetContentStaticState
    extends State<BottomSheetContentStatic> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600, // Set the desired height here
      child: SingleChildScrollView(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 31,
                  width: 31,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.gray75),
                    shape: BoxShape.circle,
                  ),
                  child: IconButtonWidget(
                    ontap: () {
                      Navigator.pop(context);
                    },
                    height: 31,
                    width: 31,
                    containerColor: AppColors.bgGradient2,
                    widget: Icon(
                      Icons.clear,
                      color: AppColors.mainColor,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Statistic',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: [
                          AppColors.indigo,
                          AppColors.mainColor,
                        ],
                      ).createShader(
                        const Rect.fromLTWH(20.0, 0.0, 120.0, 70.0),
                      ),
                  ),
                ),
              ),
            ),
            CustomSizedBoxHeight(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  width: double.infinity,
                  height: 206,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.asset(AppImages.fortnite,fit: BoxFit.fill,width: double.infinity,),
                ),
              ),
            ),
            CustomSizedBoxHeight(height: 20),
            CustomSizedBoxHeight(height: 15),
            Padding(
             padding: const EdgeInsets.symmetric(horizontal: 23.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
               CustomText(
                   textStyle: AppStyle.textStyle12regularWhite,
                   title: 'Title'),
               CustomSizedBoxHeight(height: 10),
               CustomText(
                   textStyle: AppStyle.textStyle11SemiBoldWhite400,
                   title: 'Playing Sprinterlands'),
               CustomSizedBoxHeight(height: 15),
               CustomText(
                   textStyle: AppStyle.textStyle12regularWhite,
                   title: 'Visibility'),
               CustomSizedBoxHeight(height: 10),
               CustomText(
                   textStyle: AppStyle.textStyle11SemiBoldWhite400,
                   title: 'Public'),
               CustomSizedBoxHeight(height: 15),
               CustomText(
                   textStyle: AppStyle.textStyle12regularWhite,
                   title: 'Date'),
               CustomSizedBoxHeight(height: 10),
               CustomText(
                   textStyle: AppStyle.textStyle11SemiBoldWhite400,
                   title: 'May 12 2023'),
                 CustomSizedBoxHeight(height: 20),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   Container(
                     height: 100,
                      width: 88,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(6),
                       gradient: LinearGradient(
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                           colors: [
                         AppColors.indigo,
                         AppColors.mainColor
                       ])
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                       CustomText(
                           textStyle: AppStyle.textStyle16Bold600,
                           title: '400')
                     ],),
                   ),
                   Container(
                     height: 100,
                      width: 88,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(6),
                       gradient: LinearGradient(
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                           colors: [
                         AppColors.indigo,
                         AppColors.mainColor
                       ])
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                       CustomText(
                           textStyle: AppStyle.textStyle16Bold600,
                           title: '400')
                     ],),
                   ),
                   Container(
                     height: 100,
                      width: 88,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(6),
                       gradient: LinearGradient(
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                           colors: [
                         AppColors.indigo,
                         AppColors.mainColor
                       ])
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                       CustomText(
                           textStyle: AppStyle.textStyle16Bold600,
                           title: '400')
                     ],),
                   ),
                 ],),
             ],),
           ),
            CustomSizedBoxHeight(height: 60),
          ],
        ),
      ),
    );
  }

}
