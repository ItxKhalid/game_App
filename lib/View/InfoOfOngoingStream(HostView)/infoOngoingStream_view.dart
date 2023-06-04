import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/BottomNavBar.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/View/CreateALiveStream/success_view.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/custom_appbar.dart';
import 'package:game/widgets/customtext.dart';
import 'package:get/get.dart';
import '../../Utils/color_constant.dart';
import '../../Utils/image_constant.dart';
import '../../widgets/GradientTextWidget.dart';
import '../../widgets/customButton.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../Drawer/Drawer_view.dart';
import 'Components/videoContainer.dart';

class InfoOngoingStreamView extends StatefulWidget {
  const InfoOngoingStreamView({Key? key}) : super(key: key);

  @override
  State<InfoOngoingStreamView> createState() => _InfoOngoingStreamViewState();
}

class _InfoOngoingStreamViewState extends State<InfoOngoingStreamView> {
  get tabController => null;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return DrawerWithNavBar(
        screen: Container(
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
                Row(
                  children: [
                    IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.mainColor,
                        )),
                    GradientTextWidget(
                      text: 'Stream details',
                      size: 19.sp,
                    )
                  ],
                ),
                DefaultTabController(
                  length: 2,
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
                                  AppColors.bgGradient4,
                                  AppColors.bgGradient4,
                                ],
                              ).createShader(
                                Rect.fromLTWH(0.0, 0.0, 150.0, 70.0),
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
                                AppColors.bgGradient4,
                              ],
                            )),
                        indicatorPadding: const EdgeInsets.only(
                            left: 65, right: 65, bottom: 20, top: 44),
                        tabs: const [
                          Tab(
                            text: 'Information',
                          ),
                          Tab(text: 'Stream chat'),
                        ],
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        // height: 480,
                        height: MediaQuery.of(context).size.height * 0.74,
                        child: TabBarView(
                          physics: BouncingScrollPhysics(),
                          controller: tabController,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ///Edit Button
                                IconButtonWidget(
                                  ontap: () {},
                                  width: 31,
                                  height: 31,
                                  widget: Icon(Icons.edit,
                                      color: AppColors.whiteA700),
                                  gradient: LinearGradient(
                                    end: Alignment.bottomCenter,
                                    begin: Alignment.topLeft,
                                    colors: [
                                      AppColors.mainColor,
                                      AppColors.indigoAccent,
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: AppColors.mainColor,
                                        blurRadius: 10,
                                        spreadRadius: -5,
                                        offset: Offset(0, 6))
                                  ],
                                ),
                                CustomSizedBoxHeight(height: 10),
                                const VideoContainer(),
                                CustomSizedBoxHeight(height: 10),
                                CustomText(
                                    textStyle: AppStyle.textStyle12regularWhite,
                                    title: 'Title'),
                                CustomSizedBoxHeight(height: 10),
                                CustomText(
                                    textStyle:
                                        AppStyle.textStyle11SemiBoldWhite400,
                                    title: 'Playing Sprinterlands'),
                                CustomSizedBoxHeight(height: 15),
                                CustomText(
                                    textStyle: AppStyle.textStyle12regularWhite,
                                    title: 'Description'),
                                CustomSizedBoxHeight(height: 10),
                                CustomText(
                                    textStyle:
                                        AppStyle.textStyle11SemiBoldWhite400,
                                    title: 'Enjoying Sprinterlands'),
                                CustomSizedBoxHeight(height: 15),
                                CustomText(
                                    textStyle: AppStyle.textStyle12regularWhite,
                                    title: 'Tags'),
                                CustomSizedBoxHeight(height: 8),
                                SizedBox(
                                  height: 24,
                                  child: ListView.builder(
                                    itemCount: 2,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                end: Alignment.bottomRight,
                                                begin: Alignment.topLeft,
                                                colors: [
                                                  AppColors.mainColor,
                                                  AppColors.indigoAccent,
                                                ],
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: CustomText(
                                              textStyle:
                                                  AppStyle.textStyle10Regular,
                                              title: 'playtoearn'),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                CustomSizedBoxHeight(height: 15),
                                CustomText(
                                    textStyle: AppStyle.textStyle12regularWhite,
                                    title: 'Category'),
                                CustomSizedBoxHeight(height: 10),
                                CustomText(
                                    textStyle:
                                    AppStyle.textStyle11SemiBoldWhite400,
                                    title: 'Cripto'),
                                CustomSizedBoxHeight(height: 15),
                                CustomText(
                                    textStyle: AppStyle.textStyle12regularWhite,
                                    title: 'Visibility'),
                                CustomSizedBoxHeight(height: 10),
                                CustomText(
                                    textStyle:
                                    AppStyle.textStyle11SemiBoldWhite400,
                                    title: 'Public'),
                              ],
                            ),
                            const Text('data'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
