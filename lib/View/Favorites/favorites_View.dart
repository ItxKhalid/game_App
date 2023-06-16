import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:game/BottomNavBar.dart';
import 'package:game/View/VideoPage_View/StreamComments_View.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../Utils/app_style.dart';
import '../../Utils/color_constant.dart';
import '../../Utils/image_constant.dart';
import '../../widgets/GradientTextWidget.dart';
import '../../widgets/Sizebox/sizedboxheight.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/customtext.dart';
import '../Analytics/analytics_view.dart';
import '../Drawer/Drawer_view.dart';
import '../Followers/followers.dart';
import '../Profile/profile_view.dart';
import '../Settings/settings_view.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.bgGradient2,
                  AppColors.bgGradient2,
                  AppColors.bgGradient1,
                ])
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSizedBoxHeight(height: 35),
              CustomAppBar(
                notificationOntap: (){},
                profileOntap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileView(),
                    ),
                  );
                },
                settingOntap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsView(),
                    ),
                  );
                },
                searchOntap: () {},
                drawerOntap: (){
                  z.toggle!();
                },
              ),
              CustomSizedBoxHeight(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GradientTextWidget(
                  size: 19,
                  text: 'Favorites',
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 20),
                  physics: const BouncingScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                       onTap: (){
                         Get.to(()=>const StreamComments());
                       },
                      child: Container(
                        width: 340,
                        height: 206,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Stack(
                            children: [
                              Image.asset(AppImages.fortnite,fit: BoxFit.fill,width: double.infinity,),
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
                                child: IconButtonWidget(
                                  ontap: (){},
                                  height: 37,
                                  width: 37,
                                  containerColor: AppColors.tagCancel.withOpacity(0.7),
                                  widget:  const Icon(Icons.star,color: Colors.white),
                                ),
                              ),
                              Positioned(
                                bottom: 16.h,
                                left: 12.w,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:  [
                                        CustomText(
                                            textStyle: AppStyle.textStyle12Regular,
                                            title: 'My first Cratch video'
                                        ),
                                        CustomText(
                                            textStyle: AppStyle.textStyle10Regular,
                                            title: '240 watching'
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],),
        ));
  }
}
