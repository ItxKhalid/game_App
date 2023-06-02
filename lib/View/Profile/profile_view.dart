import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/widgets/Sizebox/sizedboxwidth.dart';
import 'package:game/widgets/custom_appbar.dart';
import 'package:game/widgets/customtext.dart';
import 'package:image_picker/image_picker.dart';

import '../../Utils/color_constant.dart';
import '../../widgets/Sizebox/sizedboxheight.dart';
import '../../widgets/custom_icon_button.dart';
import 'Components/circularProfile.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  late File imageFile;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal.withOpacity(0.4),
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.profileBackG),
              alignment: Alignment.topCenter,
            ),
          ),
          child: Scaffold(
              extendBodyBehindAppBar: true,
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                leading: CustomAppBar(
                  searchOntap: () {},
                  drawerOntap: () {},
                ),
                leadingWidth: double.infinity,
              ),
              body: Stack(children: [
                Padding(
                    padding: EdgeInsets.only(top: 200.h),
                    child: Container(
                        height: 631.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30.r)),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                AppColors.bgGradient2,
                                AppColors.bgGradient2,
                                AppColors.bgGradient1,
                              ]),
                        ),
                        child: Column(
                          children: [
                            CustomSizedBoxHeight(height: 50),
                            CustomText(
                                textStyle: AppStyle.textStyle17Bold,
                                title: 'JosefBenis'),
                            CustomSizedBoxHeight(height: 10),
                            CustomText(
                                textStyle: AppStyle.textStyle9SemiBoldWhite,
                                title: '308K Followers'),
                            CustomSizedBoxHeight(height: 10),
                            CustomText(
                                textAlign: TextAlign.center,
                                textStyle: AppStyle.textStyle11SemiBoldBlack,
                                title:
                                    'Hi everyone, welcome to my Cratch channel! Enjoy my\nAxie infinity play!...'),
                            CustomText(
                                textStyle: AppStyle.textStyle12Regular,
                                title: '... Show more'),
                            CustomSizedBoxHeight(height: 30),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButtonWidget(
                                  ontap: () {},
                                  height: 32,
                                  width: 32,
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        AppColors.mainColor,
                                        AppColors.indigo,
                                        AppColors.indigo,
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.mainColor,
                                      blurRadius: 20.0, // soften the shadow
                                      spreadRadius: 0.5, //extend the shadow
                                      offset: const Offset(
                                        0.0, // Move to right 10  horizontally
                                        4.0, // Move to bottom 10 Vertically
                                      ),
                                    )
                                  ],
                                  widget:  Icon(Icons.favorite,color: AppColors.whiteA700,size: 18),
                                ),
                                CustomSizedBoxWidth(width: 20),
                                IconButtonWidget(
                                  ontap: () {},
                                  height: 50,
                                  width: 50,
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        AppColors.mainColor,
                                        AppColors.indigo.withOpacity(0.7),
                                        AppColors.mainColor,
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.mainColor,
                                      blurRadius: 20.0, // soften the shadow
                                      spreadRadius: 0.5, //extend the shadow
                                      offset: const Offset(
                                        0.0, // Move to right 10  horizontally
                                        4.0, // Move to bottom 10 Vertically
                                      ),
                                    )
                                  ],
                                    widget:  Icon(Icons.person_add,color: AppColors.whiteA700,size: 24)
                                ),
                                CustomSizedBoxWidth(width: 20),
                                IconButtonWidget(
                                  ontap: () {},
                                  height: 32,
                                  width: 32,
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        AppColors.mainColor,
                                        AppColors.indigo,
                                        AppColors.indigo,
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.mainColor,
                                      blurRadius: 20.0, // soften the shadow
                                      spreadRadius: 0.5, //extend the shadow
                                      offset: const Offset(
                                        0.0, // Move to right 10  horizontally
                                        4.0, // Move to bottom 10 Vertically
                                      ),
                                    )
                                  ],
                                  widget: SvgPicture.asset(AppImages.imgSearch),
                                ),
                              ],
                            )
                          ],
                        ))),
                const CircularProfile(),
              ])),
        ),
      ),
    );
  }

  /// Get from gallery
  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}
