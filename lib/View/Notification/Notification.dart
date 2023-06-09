import 'package:flutter/material.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/widgets/GradientTextWidget.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/Sizebox/sizedboxwidth.dart';
import 'package:game/widgets/customtext.dart';

import '../../Utils/color_constant.dart';
import '../../Utils/image_constant.dart';
import '../../widgets/customButton.dart';
import '../../widgets/custom_icon_button.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            AppColors.bgGradient2,
            AppColors.bgGradient2,
            AppColors.bgGradient1,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.bgGradient2,
          shadowColor: Colors.transparent,
          actions: [
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
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GradientTextWidget(
                  size: 19,
                  text: 'Notifications',
                ),
                CustomSizedBoxHeight(height: 20),
                SizedBox(
                  height: 500,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.zero,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(AppImages.john),
                          ),
                          CustomSizedBoxWidth(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  textStyle: AppStyle.textStyle12Regular,
                                  title: 'skidrowgames started following you'),
                              CustomText(
                                  title: '4h ago',
                                  textStyle: AppStyle.textStyle11SemiBoldBlack),
                            ],
                          )
                        ],
                      ),
                      CustomSizedBoxHeight(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(AppImages.john),
                          ),
                          CustomSizedBoxWidth(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  textStyle: AppStyle.textStyle12Regular,
                                  title: 'skidrowgames started following you'),
                              CustomText(
                                  title: '4h ago',
                                  textStyle: AppStyle.textStyle11SemiBoldBlack),
                            ],
                          )
                        ],
                      ),
                      CustomSizedBoxHeight(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(AppImages.john),
                          ),
                          CustomSizedBoxWidth(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  textStyle: AppStyle.textStyle12Regular,
                                  title: 'skidrowgames started following you'),
                              CustomText(
                                  title: '4h ago',
                                  textStyle: AppStyle.textStyle11SemiBoldBlack),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Container(
                          height: 62,
                          decoration: BoxDecoration(
                              color: AppColors.textField,
                              borderRadius: BorderRadius.circular(6)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Image.asset(
                                  AppImages.gamingImage2,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      textStyle:
                                          AppStyle.textStyle11SemiBoldWhite600,
                                      title: 'Let’s see where we can go'),
                                  CustomSizedBoxHeight(height: 5),
                                  Container(
                                    width: 29,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: Colors.black38,
                                      border: Border.all(
                                          color: AppColors.mainColor),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          AppImages.logopng,
                                          height: 9,
                                          width: 9,
                                        ),
                                        const SizedBox(width: 3),
                                        const Text(
                                          '1',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 7,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      CustomSizedBoxHeight(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(AppImages.john),
                          ),
                          CustomSizedBoxWidth(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  textStyle: AppStyle.textStyle12Regular,
                                  title: 'skidrowgames started following you'),
                              CustomText(
                                  title: '4h ago',
                                  textStyle: AppStyle.textStyle11SemiBoldBlack),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Container(
                          height: 42,
                          decoration: BoxDecoration(
                              color: AppColors.textField,
                              borderRadius: BorderRadius.circular(6)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5, bottom: 5, left: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      AppImages.gamingImage2,
                                    ),
                                    CustomSizedBoxWidth(width: 10),
                                    CustomText(
                                        textStyle: AppStyle
                                            .textStyle11SemiBoldWhite600,
                                        title: 'Let’s see where we can go'),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      CustomSizedBoxHeight(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 80, right: 155),
                        child: CustomButton(
                          width: 98,
                          height: 29,
                          title: '    Check it out',
                          ontap: () {},
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              AppColors.mainColor,
                              AppColors.indigoAccent,
                            ],
                          ),
                          AppStyle: AppStyle.textStyle8White600,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomSizedBoxHeight(height: 10),
                CustomButton(
                  title: 'Clear All',
                  ontap: () {},
                  AppStyle: AppStyle.textStyle12regularWhite,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.indigoAccent,
                        AppColors.mainColor,
                        AppColors.mainColor,
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
