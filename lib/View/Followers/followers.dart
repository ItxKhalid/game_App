import 'dart:io';
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
import 'FollowersComponents/followersList.dart';

class Followers extends StatefulWidget {
  const Followers({Key? key}) : super(key: key);

  @override
  State<Followers> createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  late File imageFile;

  List flist = [
    // (AppImages.john, "SkidrowGames", "19 Followers"),
    [AppImages.john, "For Fun", "19 Followers"]
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              backgroundColor: Colors.transparent,
              leading: CustomAppBar(
                searchOntap: () {},
                drawerOntap: () {},
              ),
              leadingWidth: double.infinity,
            ),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: Consumer<SettingsProvider>(
                  builder: (context, settingsprovider, child) {
                    return ListView(
                      physics: BouncingScrollPhysics(),
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
                                      Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)))),
                        CustomSizedBoxHeight(height: 30.h),
                        DefaultTabController(
                          length: 3,
                          initialIndex: 0,
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                height: 60.h,
                                child: TabBar(
                                  dividerColor: Colors.transparent,
                                  //  isScrollable: true,
                                  indicatorColor: AppColors.mainColor,
                                  indicatorSize: TabBarIndicatorSize.label,
                                  labelColor: AppColors.mainColor,
                                  unselectedLabelColor: Colors.white,
                                  tabs: [
                                    Tab(
                                      child: Column(
                                        children: [
                                          CustomText(
                                              textStyle: AppStyle
                                                  .textStyle12regularWhite,
                                              title: "All Followers"),
                                          CustomSizedBoxHeight(height: 3.w),
                                          CustomText(
                                              textStyle: AppStyle
                                                  .textStyle11SemiBoldBlack,
                                              title: "170"),
                                        ],
                                      ),
                                    ),
                                    Tab(
                                      child: Column(
                                        children: [
                                          CustomText(
                                              textStyle: AppStyle
                                                  .textStyle12regularWhite,
                                              title: "Followers Online"),
                                          CustomSizedBoxHeight(height: 3.w),
                                          CustomText(
                                              textStyle: AppStyle
                                                  .textStyle11SemiBoldBlack,
                                              title: "80"),
                                        ],
                                      ),
                                    ),
                                    Tab(
                                      child: Column(
                                        children: [
                                          CustomText(
                                              textStyle: AppStyle
                                                  .textStyle12regularWhite,
                                              title: "Connet"),
                                          CustomSizedBoxHeight(height: 3.w),
                                          CustomText(
                                              textStyle: AppStyle
                                                  .textStyle11SemiBoldBlack,
                                              title: "130"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomSizedBoxHeight(height: 9.h),
                              Container(
                                height: 546.h,
                                decoration: BoxDecoration(border: Border()),
                                child: TabBarView(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(height: 10.h),
                                        Expanded(
                                            child: ListView.builder(
                                                physics:
                                                    BouncingScrollPhysics(),
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
                                    Expanded(
                                        child: ListView.builder(
                                            physics: BouncingScrollPhysics(),
                                            itemCount: flist.length,
                                            itemBuilder: (context, index) {
                                              return FollowersList(
                                                imagepath: flist[index][0],
                                                name: flist[index][1],
                                                followers: flist[index][2],
                                              );
                                            })),
                                    Expanded(
                                        child: ListView.builder(
                                            physics: BouncingScrollPhysics(),
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
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ))),
      ),
    );
  }
}
