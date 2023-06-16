import 'dart:io';
import 'package:game/BottomNavBar.dart';
import 'package:game/Provider/settings_provider.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/widgets/custom_appbar.dart';
import 'package:provider/provider.dart';
import '../../Utils/app_style.dart';
import '../../Utils/color_constant.dart';
import '../../widgets/customtext.dart';
import '../Drawer/Drawer_view.dart';
import '../Profile/profile_view.dart';
import '../Settings/settings_view.dart';
import 'FollowersComponents/followersList.dart';

class Followers extends StatefulWidget {
  const Followers({Key? key}) : super(key: key);

  @override
  State<Followers> createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  late File imageFile;
  get tabController => null;
  bool loading = false;
  bool isVisible2 = false;

  List flist = [
    // (AppImages.john, "SkidrowGames", "19 Followers"),
    [AppImages.john, "SkidrowGames" , "19 Followers"]
  ];

  @override
  Widget build(BuildContext context) {
    return DrawerWithNavBar(
      screen: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.bgGradient2,
                AppColors.bgGradient2,
                AppColors.bgGradient1,
              ],
            ),
          ),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: AppColors.bgGradient2,
                shadowColor: Colors.transparent,
                leading: CustomAppBar(
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
                  drawerOntap: () {
                    z.toggle!();
                  },
                ),
                leadingWidth: double.infinity,
              ),
              body: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  child: Consumer<SettingsProvider>(
                    builder: (context, settingsprovider, child) {
                      return ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          CustomSizedBoxHeight(height: 30.h),
                          Text("Followers",
                              style: TextStyle(
                                  fontSize: 17.h,
                                  fontWeight: FontWeight.w700,
                                  foreground: Paint()
                                    ..shader = LinearGradient(
                                      colors: <Color>[
                                        AppColors.txtGradient1,
                                        AppColors.txtGradient2
                                        //add more color here.
                                      ],
                                    ).createShader(
                                        const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)))),
                          CustomSizedBoxHeight(height: 30.h),
                          DefaultTabController(
                            length: 3,
                            initialIndex: 0,
                            child: Column(
                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                            TabBar(
                            labelColor: Colors.white,
                              // unselectedLabelColor: Colors.black,
                              unselectedLabelStyle: TextStyle(
                                color: AppColors.whiteA700,
                              ),
                              labelPadding: const EdgeInsets.all(10),
                              labelStyle: TextStyle(
                                  foreground: Paint()
                                    ..shader = LinearGradient(
                                      tileMode: TileMode.repeated,
                                      colors: [
                                        AppColors.redAccsent,
                                        AppColors.mainColor,
                                        AppColors.mainColor,
                                        AppColors.txtGradient4,
                                        AppColors.txtGradient4,
                                      ],
                                    ).createShader(
                                      const Rect.fromLTWH(0.0, 0.0, 150.0, 70.0),
                                    ),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700),
                              controller: tabController,
                              indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColors.redAccsent,
                                      AppColors.mainColor,
                                      AppColors.bgGradient3,
                                    ],
                                  )
                              ),
                              indicatorPadding: const EdgeInsets.only(
                                  left: 30, right: 30, bottom: 20, top: 44),
                                    tabs: [
                                      Tab(
                                        child: Column(
                                          children: [
                                            CustomText(
                                                textStyle: AppStyle
                                                    .textStyle8White600,
                                                title: "All Followers"),
                                            CustomSizedBoxHeight(height: 3.w),
                                            CustomText(
                                                textStyle: AppStyle
                                                    .textStyle8White600,
                                                title: "170"),
                                          ],
                                        ),
                                      ),
                                      Tab(
                                        child: Column(
                                          children: [
                                            CustomText(
                                                textStyle: AppStyle
                                                    .textStyle8White600,
                                                title: "Followers Online"),
                                            CustomSizedBoxHeight(height: 3.w),
                                            CustomText(
                                                textStyle: AppStyle
                                                    .textStyle8White600,
                                                title: "80"),
                                          ],
                                        ),
                                      ),
                                      Tab(
                                        child: Column(
                                          children: [
                                            CustomText(
                                                textStyle: AppStyle
                                                    .textStyle8White600,
                                                title: "Connect"),
                                            CustomSizedBoxHeight(height: 3.w),
                                            CustomText(
                                                textStyle: AppStyle
                                                    .textStyle8White600,
                                                title: "130"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                Container(
                                  height: 500.h,
                                  decoration: const BoxDecoration(border: Border()),
                                  child: TabBarView(
                                    physics: const BouncingScrollPhysics(),
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: 10.h),
                                          Expanded(
                                              child: ListView.builder(
                                                  physics:
                                                      const BouncingScrollPhysics(),
                                                  itemCount: flist.length,
                                                  itemBuilder: (context, index) {
                                                    return FollowersList(
                                                      imagepath: flist[index][0],
                                                      name: flist[index][1],
                                                      followers: flist[index][2],
                                                    );
                                                  })),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(height: 10.h),
                                          Expanded(
                                              child: ListView.builder(
                                                  physics:
                                                      const BouncingScrollPhysics(),
                                                  itemCount: flist.length,
                                                  itemBuilder: (context, index) {
                                                    return FollowersList(
                                                      imagepath: flist[index][0],
                                                      name: flist[index][1],
                                                      followers: flist[index][2],
                                                    );
                                                  })),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(height: 10.h),
                                          Expanded(
                                              child: ListView.builder(
                                                  physics:
                                                      const BouncingScrollPhysics(),
                                                  itemCount: flist.length,
                                                  itemBuilder: (context, index) {
                                                    return FollowersList(
                                                      imagepath: flist[index][0],
                                                      name: flist[index][1],
                                                      followers: flist[index][2],
                                                    );
                                                  })),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ))),
        ),
      ),
    );
  }
}
