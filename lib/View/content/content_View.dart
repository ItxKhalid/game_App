import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game/BottomNavBar.dart';
import 'package:game/widgets/Sizebox/sizedboxwidth.dart';

import '../../Utils/app_style.dart';
import '../../Utils/color_constant.dart';
import '../../Utils/image_constant.dart';
import '../../widgets/GradientTextWidget.dart';
import '../../widgets/Sizebox/sizedboxheight.dart';
import '../../widgets/customButton.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/customtext.dart';
import '../Donation/BottomSheet.dart';
import '../Drawer/Drawer_view.dart';
import '../Profile/profile_view.dart';
import '../Settings/settings_view.dart';
import 'BottomSheet/BottomSheet_View.dart';
import 'BottomSheet/EditNFT.dart';
import 'BottomSheet/EditVideo.dart';
import 'BottomSheet/selectedContainerVertical.dart';

class ContentView extends StatelessWidget {
   ContentView({Key? key}) : super(key: key);

  get tabController => null;
  bool loading = false;
  bool isVisible2 = false;

  @override
  Widget build(BuildContext context) {
    return  DrawerWithNavBar(
        screen: Container(
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
                  AppBar(
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
                  CustomSizedBoxHeight(height: 35),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GradientTextWidget(
                          size: 19,
                          text: 'Content',
                        ),
                        CustomButton(
                          width: 110,
                          height: 28,
                          title: '+ NFT collection',
                          ontap: () {
                            showModalBottomSheet(
                              barrierColor:
                              AppColors.gray.withOpacity(0.4),
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
                                return BottomSheetContentCreateNFt();
                              },
                            );
                          },
                          AppStyle: AppStyle.textStyle12regularWhite,
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                AppColors.indigoAccent,
                                AppColors.mainColor,
                                AppColors.indigoAccent,
                              ]),
                        ),
                      ],
                    ),
                  ),
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
                              left: 40, right: 40, bottom: 20, top: 44),
                          tabs: const [
                            Tab(text: 'Videos'),
                            Tab(text: 'Lives'),
                            Tab(text: 'NFTs'),
                          ],
                        ),
                        // const SizedBox(height: 20),
                        SizedBox(
                          // height: 480,
                          height: MediaQuery.of(context).size.height * 0.64,
                          child: TabBarView(
                            physics: const BouncingScrollPhysics(),
                            controller: tabController,
                            children:  [
                              ///Vides
                              SizedBox(
                                height: 460,
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Container(
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
                                                ontap: () {
                                                  showModalBottomSheet(
                                                    barrierColor:
                                                    AppColors.gray.withOpacity(0.4),
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
                                                      return BottomSheetContentEditVideo();
                                                    },
                                                  );
                                                },
                                                height: 37,
                                                width: 37,
                                                containerColor: AppColors.tagCancel.withOpacity(0.7),
                                                widget:   Icon(Icons.edit,color: AppColors.mainColor,size: 18,),
                                              ),
                                            ),
                                            Positioned(
                                              top: 12.h,
                                              right: 55.w,
                                              child: IconButtonWidget(
                                                ontap: (){},
                                                height: 37,
                                                width: 37,
                                                containerColor: AppColors.tagCancel.withOpacity(0.7),
                                                widget:   SvgPicture.asset(AppImages.Vectorsvg),
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
                                                          title: '240 watching . 2months ago'
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              ///Lives
                              SizedBox(
                                height: 460,
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Container(
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
                                                ontap: (){
                                                  editStreamAlertDialog(context);
                                                },
                                                height: 37,
                                                width: 37,
                                                containerColor: AppColors.tagCancel.withOpacity(0.7),
                                                widget:   Icon(Icons.edit,color: AppColors.mainColor,size: 18,),
                                              ),
                                            ),
                                            Positioned(
                                              top: 12.h,
                                              right: 55.w,
                                              child: IconButtonWidget(
                                                ontap: (){},
                                                height: 37,
                                                width: 37,
                                                containerColor: AppColors.tagCancel.withOpacity(0.7),
                                                widget:   SvgPicture.asset(AppImages.Vectorsvg),
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
                                                          title: '240 watching . 2months ago'
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              ///NFTs
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
                                          left: 65, right: 65, bottom: 20, top: 44),
                                      tabs: const [
                                        Tab(
                                          text: 'Created',
                                        ),
                                        Tab(text: 'Holding'),
                                      ],
                                    ),
                                    SizedBox(
                                      // height: 480,
                                      height: MediaQuery.of(context).size.height * 0.5,
                                      child: TabBarView(
                                        physics: const BouncingScrollPhysics(),
                                        controller: tabController,
                                        children:  [
                                          ///Created
                                          SizedBox(
                                            // height: 480,
                                            height: MediaQuery.of(context).size.height * 0.4,
                                            child: ListView.builder(
                                              padding: EdgeInsets.zero,
                                              physics: const BouncingScrollPhysics(),
                                              itemCount: 2,
                                              itemBuilder: (context, index) {
                                                return Container(
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
                                                          left: 11.w,
                                                          child: Container(
                                                            width: 58,
                                                            height: 33,
                                                            decoration: BoxDecoration(
                                                              color: Colors.black54,
                                                              border: Border.all(color:AppColors.mainColor),
                                                              borderRadius: BorderRadius.circular(4),
                                                            ),
                                                            child: Row(
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                Image.asset(AppImages.logopng),
                                                                CustomSizedBoxWidth(width: 5),
                                                                const Text(
                                                                  '1',
                                                                  style: TextStyle(
                                                                    color: Colors.white,
                                                                    fontSize: 8,
                                                                    fontWeight: FontWeight.bold,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          top: 12.h,
                                                          right: 11.w,
                                                          child: IconButtonWidget(
                                                            ontap: () {
                                                              showModalBottomSheet(
                                                                barrierColor:
                                                                AppColors.gray.withOpacity(0.4),
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
                                                                  return BottomSheetContentEditNFt();
                                                                },
                                                              );
                                                            },
                                                            height: 37,
                                                            width: 37,
                                                            containerColor: AppColors.tagCancel.withOpacity(0.7),
                                                            widget:   Icon(Icons.edit,color: AppColors.mainColor,size: 18,),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          top: 12.h,
                                                          right: 55.w,
                                                          child: IconButtonWidget(
                                                            ontap: () {
                                                              showModalBottomSheet(
                                                                barrierColor:
                                                                AppColors.gray.withOpacity(0.4),
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
                                                                  return BottomSheetContentCreateNFt();
                                                                },
                                                              );
                                                            },
                                                            height: 37,
                                                            width: 37,
                                                            containerColor: AppColors.tagCancel.withOpacity(0.7),
                                                            widget:   SvgPicture.asset(AppImages.nftexport),
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
                                                                      title: '19 available . 1 minted'
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          ///Holding
                                          SizedBox(
                                            // height: 480,
                                            height: MediaQuery.of(context).size.height * 0.4,
                                            child: ListView.builder(
                                              padding: EdgeInsets.zero,
                                              physics: const BouncingScrollPhysics(),
                                              itemCount: 2,
                                              itemBuilder: (context, index) {
                                                return Container(
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
                                                        Image.asset(AppImages.fortnite,fit: BoxFit.cover,width: double.infinity,),
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
                                                          widget:   SvgPicture.asset(AppImages.nftexport),
                                                        ),
                                                      ),
                                                        Positioned(
                                                          bottom: 20.h,
                                                          left: 12.w,
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    width: 40,
                                                                    height: 40,
                                                                    decoration:  BoxDecoration(
                                                                      shape: BoxShape.circle,
                                                                      border: Border.all(color: AppColors.whiteA700,width: 1.5) ,
                                                                      image: DecorationImage(
                                                                        image: AssetImage(AppImages.imgImage11),
                                                                        fit: BoxFit.cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(width: 10),
                                                                  CustomText(
                                                                      textStyle: AppStyle.textStyle10Regular,
                                                                      title: 'anthonyplay'
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 8),
                                                              CustomText(
                                                                  textStyle: AppStyle.textStyle16Bold600,
                                                                  title: '  My first Cratch video'
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  /////////////////////////////
                ],),
            )));
  }

   void editStreamAlertDialog(BuildContext context) {
     showDialog(
       context: context,
       builder: (BuildContext context) {
         return AlertDialog(
           shadowColor: AppColors.bgGradient1,
           backgroundColor: AppColors.bgGradient3,
           contentPadding: const EdgeInsets.all(0),
           content: SizedBox(
             height: 420.h,
             width: 380.w,
             child: Padding(
               padding: EdgeInsets.symmetric(horizontal: 14.w),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
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
                   Padding(
                     padding:
                     const EdgeInsets.symmetric(horizontal: 23),
                     child: Align(
                       alignment: Alignment.center,
                       child: Text(
                         'Edit Live',
                         style: TextStyle(
                           fontSize: 19,
                           fontWeight: FontWeight.w700,
                           foreground: Paint()
                             ..shader = LinearGradient(
                               colors: [
                                 AppColors.indigo,
                                 AppColors.mainColor,
                               ],
                             ).createShader(
                               const Rect.fromLTWH(20.0, 0.0, 120.0, 70.0),
                             ),
                         ),
                       ),
                     ),
                   ),
                   CustomSizedBoxHeight(height: 30),
                   CustomText(textStyle: AppStyle.textStyle12Regular,
                       title: 'Visibility'
                   ),
                   CustomSizedBoxHeight(height: 10),
                   SelectableContainersContentVertical(),
                   CustomSizedBoxHeight(height: 30),
                   CustomButton(
                     title: 'Create',
                     ontap: (){
                       Navigator.pop(context);
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
                 ],
               ),
             ),
           ),
         );

       },
     );
   }
}
