import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/View/Donation/Token_View/successBottomSheet.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/customButton.dart';
import 'package:game/widgets/custom_text_form_field.dart';
import 'package:game/widgets/customtext.dart';
import 'package:get/get.dart';

import '../../../Utils/color_constant.dart';

class SelectableContainer extends StatefulWidget {
  @override
  _SelectableContainerState createState() => _SelectableContainerState();
}

class _SelectableContainerState extends State<SelectableContainer> {
  int _selectedIndex = -1;

  void _selectItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> containerTexts = ['10 CRTC', '50 CRTC', '100 CRTC'];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title: '\t\t\tChoose amount',
            textStyle: AppStyle.textStyle11SemiBoldWhite600,
          ),
          Container(
            height: 200,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: containerTexts.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => _selectItem(index),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      height: 43,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        // color: _selectedIndex == index ? Colors.grey : Colors.indigo,
                        gradient: _selectedIndex == index ?LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              AppColors.indigoAccent,
                              AppColors.mainColor,
                              AppColors.mainColor,
                            ]): LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppColors.fieldUnActive,
                              AppColors.fieldUnActive,
                              AppColors.fieldUnActive,
                            ]),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: CustomText(
                          title:containerTexts[index],
                          textStyle: TextStyle(
                            fontSize: 12,
                            color: _selectedIndex == index ? Colors.white : Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          CustomSizedBoxHeight(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomTextFormField(
              title: 'Other amount',
              hintText: 'Enter your donation amount',
              star: '',
            ),
          ),
          CustomSizedBoxHeight(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomButton(
              title: 'Donate',
              ontap: (){
                Get.to(showModalBottomSheet(
                  barrierColor: AppColors.gray.withOpacity(0.4),
                  backgroundColor: AppColors.bgGradient2A,
                  isDismissible: true,
                  useSafeArea: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.r),
                      topRight: Radius.circular(25.r),
                    ),
                  ),
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return const SuccessBottomSheet();
                  },
                ));
              },
              AppStyle: AppStyle.textStyle12regularWhite,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.indigoAccent,
                    AppColors.mainColor,
                    AppColors.mainColor,
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}