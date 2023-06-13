import 'package:flutter/material.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/widgets/customtext.dart';

import '../../../Utils/color_constant.dart';
import '../../../widgets/custom_text_form_field.dart';

class SelectableContainersContent extends StatefulWidget {
  @override
  _SelectableContainersContentState createState() => _SelectableContainersContentState();
}

class _SelectableContainersContentState extends State<SelectableContainersContent> {
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                selectContainer(1);
              },
              child: Container(
                height: 65,
                width: 95 ,
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
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
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
                          title: 'Everyone can watch your \nstream'),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                selectContainer(2);
              },
              child: Container(
                height: 65,
                width: 95,
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
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
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
                          title: 'Everyone can watch your \nstream'),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                selectContainer(3);
              },
              child: Container(
                height: 65,
                width: 95,
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
                  const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
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
                          title: 'Only NFT holders \ncan watch the video'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
