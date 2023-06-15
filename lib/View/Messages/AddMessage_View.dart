import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:game/BottomNavBar.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/View/Profile/profile_view.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/custom_appbar.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../Utils/AppConstant.dart';
import '../../Utils/app_style.dart';
import '../../Utils/color_constant.dart';
import '../../widgets/GradientTextWidget.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/customtext.dart';
import '../Analytics/analytics_view.dart';
import '../Drawer/Drawer_view.dart';
import '../Followers/followers.dart';
import '../Settings/settings_view.dart';

class AddMessagesView extends StatefulWidget {
  const AddMessagesView({Key? key}) : super(key: key);

  @override
  State<AddMessagesView> createState() => _AddMessagesViewState();
}

class _AddMessagesViewState extends State<AddMessagesView> {
  final List<String> images = [
    AppImages.john,
    AppImages.profilepic,
    AppImages.aibot,
    AppImages.avatar76,
    AppImages.john,
  ];
  final List<String> names = [
    'John',
    'Emma',
    'Michael',
    'Sophia',
    'Daniel',
  ];
  final List<String> time = [
    'An hour',
    '7:30pm',
    '8:30pm',
    '9:00pm',
    '7:40am',
  ];

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: z,
      borderRadius: 24,
      clipMainScreen: true,
      mainScreenTapClose: true,
      // closeCurve: Curves.bounceInOut,
      style: DrawerStyle.defaultStyle,
      menuScreenWidth: double.infinity,
      showShadow: true,
      openCurve: Curves.easeInOutCubic,
      slideWidth: MediaQuery.of(context).size.width * 0.6,
      duration: const Duration(milliseconds: 500),
      angle: 0.0,
      shadowLayer2Color: AppColors.textField.withOpacity(0.8),
      shadowLayer1Color: AppColors.bgGradient1.withOpacity(0.6),
      /// This is main code
      mainScreen:  Container(
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
          // extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leadingWidth: double.infinity,
            leading: CustomAppBar(
              searchOntap: () {},
              settingOntap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsView(),
                  ),
                );
              },
              profileOntap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileView(),
                  ),
                );
              },
              notificationOntap: () {},
              drawerOntap: () {
                z.toggle!();
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.mainColor,
                      )),
                  CustomSizedBoxHeight(height: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: TextFormField(
                      // autocorrect: true,
                      // enableSuggestions: true,
                      maxLines: 5,
                      minLines: 1,
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.multiline,
                      style: TextStyle(color: AppColors.whiteA700, fontSize: 14),
                      decoration: InputDecoration(
                        hintText: 'Search',
                        filled: true,
                        fillColor: AppColors.fieldUnActive,
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search,
                          color: AppColors.gray75,
                        ),
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: TextStyle(
                            color: const Color(0xff7C7C7C),
                            fontWeight: FontWeight.w300,
                            fontFamily: AppConstant.interMedium,
                            fontSize: 15.sp),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: const BouncingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Stack(
                          fit: StackFit.loose,
                          clipBehavior: Clip.none,
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage('${images[index]}'),
                              ),
                              title: CustomText(
                                  title: names[index],
                                  textStyle: AppStyle.textStyle12regularWhite),
                              subtitle: CustomText(
                                  title: time[index],
                                  textStyle: AppStyle.textStyle9SemiBoldWhite),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      menuScreen: Theme(
        data: ThemeData.dark(),
        child: Scaffold(
          backgroundColor: AppColors.mainColor,
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.backgroundDra),
                  fit: BoxFit.cover,
                )),
            child: Padding(
              padding: EdgeInsets.only(left: 26.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSizedBoxHeight(height: 140),
                  SizedBox(
                    width: 120,
                    child: IconButton(
                        onPressed: () {},
                        icon: Row(
                          children: [
                            const Icon(Icons.window_rounded),
                            const SizedBox(width: 5),
                            CustomText(
                                textStyle: AppStyle.textStyle14whiteSemiBold,
                                title: 'Home')
                          ],
                        )),
                  ),
                  CustomSizedBoxHeight(height: 15),
                  SizedBox(
                    width: 120,
                    child: IconButton(
                        onPressed: () {
                          Get.to(()=> const AnalyticsScreen());
                        },
                        icon: Row(
                          children: [
                            const Icon(Icons.analytics),
                            const SizedBox(width: 5),
                            CustomText(
                                textStyle: AppStyle.textStyle14whiteSemiBold,
                                title: 'Analytics')
                          ],
                        )),
                  ),
                  CustomSizedBoxHeight(height: 15),
                  SizedBox(
                    width: 120,
                    child: IconButton(
                        onPressed: () {
                          PersistentNavBarNavigator.pushNewScreen(context,
                              screen: const Followers());
                        },
                        icon: Row(
                          children: [
                            const Icon(Icons.person_add_alt_rounded),
                            const SizedBox(width: 5),
                            CustomText(
                                textStyle: AppStyle.textStyle14whiteSemiBold,
                                title: 'Followers')
                          ],
                        )),
                  ),
                  CustomSizedBoxHeight(height: 70),
                  SizedBox(
                    width: 120,
                    child: IconButton(
                        onPressed: () {},
                        icon: Row(
                          children: [
                            const Icon(Icons.logout),
                            const SizedBox(width: 5),
                            CustomText(
                                textStyle: AppStyle.textStyle14whiteSemiBold,
                                title: 'Logout')
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
