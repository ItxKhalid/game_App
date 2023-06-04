import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/Utils/color_constant.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/customtext.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import 'View/DashBoard/dashBoard_view.dart';
import 'View/Drawer/Drawer_view.dart';

class DrawerWithNavBar extends StatefulWidget {
  Widget screen;

  DrawerWithNavBar({Key? key, required this.screen}) : super(key: key);

  @override
  State<DrawerWithNavBar> createState() => _DrawerWithNavBarState();
}

class _DrawerWithNavBarState extends State<DrawerWithNavBar> {
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
      mainScreen: widget.screen,
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
                        onPressed: () {},
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
                        onPressed: () {},
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

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final controller = PersistentTabController(initialIndex: 2);

  List<Widget> _screens() {
    return [
      DashBoardView(onTapDrawer: () {
        z.toggle!();
      }),
      const Center(child: Text('data')),
      const Center(child: Text('data')),
      const Center(child: Text('data')),
      const Center(child: Text('data')),
      // AllUserScreen(),
      // ProfileScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navbarItem() {
    return [
      PersistentBottomNavBarItem(
        opacity: 0.00000001,
        icon: Container(
            height: 40,
            width: 45,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.mainColor.withOpacity(0.2),
                    blurRadius: 10.0, // soften the shadow
                    spreadRadius: 0.0, //extend the shadow
                    offset: const Offset(
                      0.0, // Move to right 10  horizontally
                      -2.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(100)),
            child: const Icon(
              Icons.window_rounded,
            )),
        activeColorPrimary: Colors.white,
        inactiveIcon: Container(
            height: 40,
            width: 45,
            color: Colors.transparent,
            child: const Icon(
              Icons.window_rounded,
            )),
        activeColorSecondary: AppColors.mainColor,
        title: 'Home',
        textStyle: const TextStyle(color: Colors.white, fontSize: 8),
      ),
      PersistentBottomNavBarItem(
        opacity: 0.00000001,
        icon: Container(
            height: 40,
            width: 45,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.mainColor.withOpacity(0.2),
                    blurRadius: 10.0, // soften the shadow
                    spreadRadius: 0.0, //extend the shadow
                    offset: const Offset(
                      0.0, // Move to right 10  horizontally
                      -2.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(100)),
            child: const Icon(
              Icons.play_arrow_rounded,
            )),
        activeColorPrimary: Colors.white,
        inactiveIcon: Container(
            height: 40,
            width: 45,
            color: Colors.transparent,
            child: const Icon(
              Icons.play_arrow_rounded,
            )),
        activeColorSecondary: AppColors.mainColor,
        title: 'Content',
        textStyle: const TextStyle(color: Colors.white, fontSize: 8),
      ),
      PersistentBottomNavBarItem(
          opacity: 0.00000001,
          icon: Container(
              height: 40,
              width: 45,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.mainColor,
                      blurRadius: 30.0, // soften the shadow
                      spreadRadius: 4.0, //extend the shadow
                      offset: const Offset(
                        0.0, // Move to right 10  horizontally
                        10.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.mainColor,
                        AppColors.mainColor,
                        AppColors.indigo,
                      ]),
                  borderRadius: BorderRadius.circular(100)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  AppImages.imgVideocam,
                ),
              )),
          activeColorPrimary: Colors.white,
          inactiveIcon: Container(
              height: 40,
              width: 45,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.mainColor,
                      blurRadius: 30.0, // soften the shadow
                      spreadRadius: 4.0, //extend the shadow
                      offset: const Offset(
                        0.0, // Move to right 10  horizontally
                        10.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.mainColor,
                        AppColors.mainColor,
                        AppColors.indigo,
                      ]),
                  borderRadius: BorderRadius.circular(100)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  AppImages.imgVideocam,
                ),
              )),
          activeColorSecondary: Colors.white),
      PersistentBottomNavBarItem(
        opacity: 0.00000001,
        icon: Container(
            height: 40,
            width: 45,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.mainColor.withOpacity(0.2),
                    blurRadius: 10.0, // soften the shadow
                    spreadRadius: 0.0, //extend the shadow
                    offset: const Offset(
                      0.0, // Move to right 10  horizontally
                      -2.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(100)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppImages.imgSearch,
                color: AppColors.mainColor,
              ),
            )),
        activeColorPrimary: Colors.white,
        inactiveIcon: Container(
            height: 40,
            width: 45,
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(AppImages.imgSearch),
            )),
        activeColorSecondary: AppColors.mainColor,
        title: 'Massage',
        textStyle: const TextStyle(color: Colors.white, fontSize: 8),
      ),
      PersistentBottomNavBarItem(
        opacity: 0.00000001,
        icon: Container(
            height: 40,
            width: 45,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.mainColor.withOpacity(0.2),
                    blurRadius: 10.0, // soften the shadow
                    spreadRadius: 0.0, //extend the shadow
                    offset: const Offset(
                      0.0, // Move to right 10  horizontally
                      -2.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(100)),
            child: const Icon(
              Icons.star_rate_rounded,
            )),
        activeColorPrimary: Colors.white,
        inactiveIcon: Container(
            height: 40,
            width: 45,
            color: Colors.transparent,
            child: const Icon(
              Icons.star_rate_rounded,
            )),
        activeColorSecondary: AppColors.mainColor,
        title: 'Home',
        textStyle: const TextStyle(color: Colors.white, fontSize: 8),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return DrawerWithNavBar(
        screen: PersistentTabView(
      navBarHeight: 60,
      context,
      screens: _screens(),
      items: _navbarItem(),
      backgroundColor: AppColors.bgGradient1,
      controller: controller,
      navBarStyle: NavBarStyle.style6,
      decoration: NavBarDecoration(borderRadius: BorderRadius.circular(1)),
      stateManagement: true,
    ));
  }
}
