import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/BottomNavBar.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/widgets/customtext.dart';

import '../../Utils/color_constant.dart';
import '../../widgets/Sizebox/sizedboxheight.dart';
import '../../widgets/custom_appbar.dart';
import '../Drawer/Drawer_view.dart';
import '../Profile/profile_view.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerWithNavBar(
      screen: DefaultTabController(
        length: 4,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.scaflodbgcolor,
                AppColors.scaflodbgcolor,
                AppColors.scaflodbgcolor,
              ],
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: const Color(0xff27283C),
              shadowColor: Colors.transparent,
              leading: CustomAppBar(
                searchOntap: () {},
                settingOntap: () {},
                notificationOntap: () {},
                profileOntap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileView(),
                    ),
                  );
                },
                drawerOntap: () {
                  z.toggle!();
                },
              ),
              leadingWidth: double.infinity,
            ),
            body: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                // CustomSizedBoxHeight(height: 30.h),
                Container(
                  height: 600.h,
                  decoration: const BoxDecoration(
                      color: Color(0xff27283C),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      )),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 21.w, right: 18.w, top: 30.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Channel analytics",
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
                                const Rect.fromLTWH(
                                  0.0,
                                  0.0,
                                  200.0,
                                  100.0,
                                ),
                              ),
                          ),
                        ),
                        CustomSizedBoxHeight(height: 30.h),
                        Container(
                          height: 45.h,
                          decoration: BoxDecoration(
                            color: AppColors.fieldUnActive,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: TabBar(
                              labelColor: Colors.white,
                              unselectedLabelColor: AppColors.offwhite,
                              indicatorColor: Colors.white,
                              indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        AppColors.mainColor,
                                        AppColors.mainColor,
                                        AppColors.indigoAccent,
                                      ])),
                              tabs: const [
                                Center(
                                  child: Text(
                                    'Year',
                                  ),
                                ),
                                Center(child: Text('Month')),
                                Center(child: Text('Week')),
                                Center(child: Text('Day')),
                              ]),
                        ),
                        SizedBox(
                          height: 460,
                          child: TabBarView(
                              physics: const BouncingScrollPhysics(),
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 23.h,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 128.h,
                                          width: 103.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              gradient: LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  end: Alignment.topLeft,
                                                  colors: [
                                                    AppColors.mainColor,
                                                    AppColors.mainColor,
                                                    const Color(0xff605A2A),
                                                    Colors.black54,
                                                  ])),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: Image.asset(
                                                        AppImages.logopng)),
                                                CustomSizedBoxHeight(
                                                    height: 20),
                                                CustomText(
                                                    textStyle: AppStyle
                                                        .textStyle16Bold600,
                                                    title: '130'),
                                                CustomText(
                                                    textStyle: AppStyle
                                                        .textStyle8White600,
                                                    title: 'Channel views')
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 11.w,
                                        ),
                                        Container(
                                          height: 128.h,
                                          width: 103.w,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff373953),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '12.5',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16.sp,
                                                      color: const Color(
                                                          0xff848484)),
                                                ),
                                                Text(
                                                  'Watch time(hours)',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 8.sp,
                                                      color: const Color(
                                                          0xff848484)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 11.w,
                                        ),
                                        Container(
                                          height: 128.h,
                                          width: 103.w,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff373953),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '+105',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16.sp,
                                                      color: const Color(
                                                          0xff848484)),
                                                ),
                                                Text(
                                                  'Followers',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 8.sp,
                                                      color: const Color(
                                                          0xff848484)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 100.w,
                                    ),
                                    Sparkline(
                                      fallbackWidth: 453.w,
                                      data: const [
                                        2,
                                        -2,
                                        2,
                                        -0.002,
                                        2.3,
                                      ],
                                      // backgroundColor: Colors.red,
                                      lineColor: Colors.indigoAccent,
                                      fillMode: FillMode.below,
                                      fillColor: Colors.green.withOpacity(.3),
                                      pointsMode: PointsMode.all,
                                      pointSize: 12.0,
                                      pointColor: Colors.indigo,
                                      useCubicSmoothing: true,
                                      lineWidth: 1.5,
                                      gridLinelabelPrefix: '\$',
                                      gridLineLabelPrecision: 3,
                                      enableGridLines: false,
                                      averageLine: false,
                                      averageLabel: false,
                                      kLine: ['max', 'min', 'first', 'last'],
                                      // max: 50.5,
                                      // min: 10.0,
                                      enableThreshold: true,
                                      thresholdSize: 0.5,
                                      lineGradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          AppColors.mainColor,
                                          AppColors.indigoAccent,
                                        ],
                                      ),
                                      fillGradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xff373953),
                                          Color(0xff373953)
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.w,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'February',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                        Text(
                                          'March',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                        Text(
                                          'Aprial',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                        Text(
                                          'June',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                        Text(
                                          'June',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 23.h,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 128.h,
                                          width: 103.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              gradient: LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  end: Alignment.topLeft,
                                                  colors: [
                                                    AppColors.mainColor,
                                                    AppColors.mainColor,
                                                    const Color(0xff605A2A),
                                                    Colors.black54,
                                                  ])),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                    alignment:
                                                    Alignment.topRight,
                                                    child: Image.asset(
                                                        AppImages.logopng)),
                                                CustomSizedBoxHeight(
                                                    height: 20),
                                                CustomText(
                                                    textStyle: AppStyle
                                                        .textStyle16Bold600,
                                                    title: '130'),
                                                CustomText(
                                                    textStyle: AppStyle
                                                        .textStyle8White600,
                                                    title: 'Channel views')
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 11.w,
                                        ),
                                        Container(
                                          height: 128.h,
                                          width: 103.w,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff373953),
                                            borderRadius:
                                            BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(left: 8),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '12.5',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w600,
                                                      fontSize: 16.sp,
                                                      color: const Color(
                                                          0xff848484)),
                                                ),
                                                Text(
                                                  'Watch time(hours)',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w600,
                                                      fontSize: 8.sp,
                                                      color: const Color(
                                                          0xff848484)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 11.w,
                                        ),
                                        Container(
                                          height: 128.h,
                                          width: 103.w,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff373953),
                                            borderRadius:
                                            BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(left: 8),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '+105',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w600,
                                                      fontSize: 16.sp,
                                                      color: const Color(
                                                          0xff848484)),
                                                ),
                                                Text(
                                                  'Followers',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w600,
                                                      fontSize: 8.sp,
                                                      color: const Color(
                                                          0xff848484)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 100.w,
                                    ),
                                    Sparkline(
                                      fallbackWidth: 453.w,
                                      data: const [
                                        2,
                                        -2,
                                        2,
                                        -0.002,
                                        2.3,
                                      ],
                                      // backgroundColor: Colors.red,
                                      lineColor: Colors.indigoAccent,
                                      fillMode: FillMode.below,
                                      fillColor: Colors.green.withOpacity(.3),
                                      pointsMode: PointsMode.all,
                                      pointSize: 12.0,
                                      pointColor: Colors.indigo,
                                      useCubicSmoothing: true,
                                      lineWidth: 1.5,
                                      gridLinelabelPrefix: '\$',
                                      gridLineLabelPrecision: 3,
                                      enableGridLines: false,
                                      averageLine: false,
                                      averageLabel: false,
                                      kLine: ['max', 'min', 'first', 'last'],
                                      // max: 50.5,
                                      // min: 10.0,
                                      enableThreshold: true,
                                      thresholdSize: 0.5,
                                      lineGradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          AppColors.mainColor,
                                          AppColors.indigoAccent,
                                        ],
                                      ),
                                      fillGradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xff373953),
                                          Color(0xff373953)
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.w,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'February',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                        Text(
                                          'March',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                        Text(
                                          'Aprial',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                        Text(
                                          'June',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                        Text(
                                          'June',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 23.h,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 128.h,
                                          width: 103.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              gradient: LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  end: Alignment.topLeft,
                                                  colors: [
                                                    AppColors.mainColor,
                                                    AppColors.mainColor,
                                                    const Color(0xff605A2A),
                                                    Colors.black54,
                                                  ])),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                    alignment:
                                                    Alignment.topRight,
                                                    child: Image.asset(
                                                        AppImages.logopng)),
                                                CustomSizedBoxHeight(
                                                    height: 20),
                                                CustomText(
                                                    textStyle: AppStyle
                                                        .textStyle16Bold600,
                                                    title: '130'),
                                                CustomText(
                                                    textStyle: AppStyle
                                                        .textStyle8White600,
                                                    title: 'Channel views')
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 11.w,
                                        ),
                                        Container(
                                          height: 128.h,
                                          width: 103.w,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff373953),
                                            borderRadius:
                                            BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(left: 8),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '12.5',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w600,
                                                      fontSize: 16.sp,
                                                      color: const Color(
                                                          0xff848484)),
                                                ),
                                                Text(
                                                  'Watch time(hours)',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w600,
                                                      fontSize: 8.sp,
                                                      color: const Color(
                                                          0xff848484)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 11.w,
                                        ),
                                        Container(
                                          height: 128.h,
                                          width: 103.w,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff373953),
                                            borderRadius:
                                            BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(left: 8),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '+105',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w600,
                                                      fontSize: 16.sp,
                                                      color: const Color(
                                                          0xff848484)),
                                                ),
                                                Text(
                                                  'Followers',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w600,
                                                      fontSize: 8.sp,
                                                      color: const Color(
                                                          0xff848484)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 100.w,
                                    ),
                                    Sparkline(
                                      fallbackWidth: 453.w,
                                      data: const [
                                        2,
                                        -2,
                                        2,
                                        -0.002,
                                        2.3,
                                      ],
                                      // backgroundColor: Colors.red,
                                      lineColor: Colors.indigoAccent,
                                      fillMode: FillMode.below,
                                      fillColor: Colors.green.withOpacity(.3),
                                      pointsMode: PointsMode.all,
                                      pointSize: 12.0,
                                      pointColor: Colors.indigo,
                                      useCubicSmoothing: true,
                                      lineWidth: 1.5,
                                      gridLinelabelPrefix: '\$',
                                      gridLineLabelPrecision: 3,
                                      enableGridLines: false,
                                      averageLine: false,
                                      averageLabel: false,
                                      kLine: ['max', 'min', 'first', 'last'],
                                      // max: 50.5,
                                      // min: 10.0,
                                      enableThreshold: true,
                                      thresholdSize: 0.5,
                                      lineGradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          AppColors.mainColor,
                                          AppColors.indigoAccent,
                                        ],
                                      ),
                                      fillGradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xff373953),
                                          Color(0xff373953)
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.w,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'February',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                        Text(
                                          'March',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                        Text(
                                          'Aprial',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                        Text(
                                          'June',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                        Text(
                                          'June',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 23.h,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 128.h,
                                          width: 103.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              gradient: LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  end: Alignment.topLeft,
                                                  colors: [
                                                    AppColors.mainColor,
                                                    AppColors.mainColor,
                                                    const Color(0xff605A2A),
                                                    Colors.black54,
                                                  ])),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                    alignment:
                                                    Alignment.topRight,
                                                    child: Image.asset(
                                                        AppImages.logopng)),
                                                CustomSizedBoxHeight(
                                                    height: 20),
                                                CustomText(
                                                    textStyle: AppStyle
                                                        .textStyle16Bold600,
                                                    title: '130'),
                                                CustomText(
                                                    textStyle: AppStyle
                                                        .textStyle8White600,
                                                    title: 'Channel views')
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 11.w,
                                        ),
                                        Container(
                                          height: 128.h,
                                          width: 103.w,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff373953),
                                            borderRadius:
                                            BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(left: 8),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '12.5',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w600,
                                                      fontSize: 16.sp,
                                                      color: const Color(
                                                          0xff848484)),
                                                ),
                                                Text(
                                                  'Watch time(hours)',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w600,
                                                      fontSize: 8.sp,
                                                      color: const Color(
                                                          0xff848484)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 11.w,
                                        ),
                                        Container(
                                          height: 128.h,
                                          width: 103.w,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff373953),
                                            borderRadius:
                                            BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(left: 8),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '+105',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w600,
                                                      fontSize: 16.sp,
                                                      color: const Color(
                                                          0xff848484)),
                                                ),
                                                Text(
                                                  'Followers',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w600,
                                                      fontSize: 8.sp,
                                                      color: const Color(
                                                          0xff848484)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 100.w,
                                    ),
                                    Sparkline(
                                      fallbackWidth: 453.w,
                                      data: const [
                                        2,
                                        -2,
                                        2,
                                        -0.002,
                                        2.3,
                                      ],
                                      // backgroundColor: Colors.red,
                                      lineColor: Colors.indigoAccent,
                                      fillMode: FillMode.below,
                                      fillColor: Colors.green.withOpacity(.3),
                                      pointsMode: PointsMode.all,
                                      pointSize: 12.0,
                                      pointColor: Colors.indigo,
                                      useCubicSmoothing: true,
                                      lineWidth: 1.5,
                                      gridLinelabelPrefix: '\$',
                                      gridLineLabelPrecision: 3,
                                      enableGridLines: false,
                                      averageLine: false,
                                      averageLabel: false,
                                      kLine: ['max', 'min', 'first', 'last'],
                                      // max: 50.5,
                                      // min: 10.0,
                                      enableThreshold: true,
                                      thresholdSize: 0.5,
                                      lineGradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          AppColors.mainColor,
                                          AppColors.indigoAccent,
                                        ],
                                      ),
                                      fillGradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xff373953),
                                          Color(0xff373953)
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.w,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'February',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                        Text(
                                          'March',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                        Text(
                                          'Aprial',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                        Text(
                                          'June',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                        Text(
                                          'June',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8.sp,
                                              color: const Color(0xff848484)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 21.h,
                ),
                Container(
                  width: 372.w,
                  height: 265.h,
                  decoration: const BoxDecoration(
                      color: Color(0xff27283C),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Latest video',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                              color: const Color(0xff848484)),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Image.asset(AppImages.gamingImage3),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
