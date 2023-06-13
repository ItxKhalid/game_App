import 'package:flutter/material.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/widgets/customtext.dart';

import '../../../Utils/color_constant.dart';
import '../../../widgets/Sizebox/sizedboxheight.dart';
import '../../../widgets/custom_text_form_field.dart';

class SelectableContainersContentVertical extends StatefulWidget {
  @override
  _SelectableContainersContentVerticalState createState() => _SelectableContainersContentVerticalState();
}

class _SelectableContainersContentVerticalState extends State<SelectableContainersContentVertical> {
  int selectedContainer = 1;

  void selectContainer(int index) {
    setState(() {
      selectedContainer = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            selectContainer(1);
          },
          child: Container(
            height: 45,
            width: double.infinity ,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                gradient: selectedContainer == 1
                    ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.indigoAccent,
                      AppColors.mainColor,
                      AppColors.mainColor,
                    ])
                    : LinearGradient(colors: [
                  AppColors.fieldUnActive,
                  AppColors.fieldUnActive,
                ])),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                      textStyle: AppStyle.textStyle11SemiBoldWhite600,
                      title: 'Public'),
                  Spacer(),
                  CustomText(
                      textStyle: AppStyle.textStyle8White600,
                      title: 'Everyone can watch your stream'),
                ],
              ),
            ),
          ),
        ),
        CustomSizedBoxHeight(height: 15),
        GestureDetector(
          onTap: () {
            selectContainer(2);
          },
          child: Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                gradient: selectedContainer == 2
                    ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.indigoAccent,
                      AppColors.mainColor,
                      AppColors.mainColor,
                    ])
                    : LinearGradient(colors: [
                  AppColors.fieldUnActive,
                  AppColors.fieldUnActive,
                ])),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                      textStyle: AppStyle.textStyle11SemiBoldWhite600,
                      title: 'Private'),
                  Spacer(),
                  CustomText(
                      textStyle: AppStyle.textStyle8White600,
                      title: 'Everyone can watch your stream'),
                ],
              ),
            ),
          ),
        ),
        CustomSizedBoxHeight(height: 15),
        GestureDetector(
          onTap: () {
            selectContainer(3);
          },
          child: Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                gradient: selectedContainer == 3
                    ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.indigoAccent,
                      AppColors.mainColor,
                      AppColors.mainColor,
                    ])
                    : LinearGradient(colors: [
                  AppColors.fieldUnActive,
                  AppColors.fieldUnActive,
                ])),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                      textStyle: AppStyle.textStyle11SemiBoldWhite600,
                      title: 'NFT holders'),
                  Spacer(),
                  CustomText(
                      textStyle: AppStyle.textStyle8White600,
                      title: 'Only NFT holders can watch the video'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
