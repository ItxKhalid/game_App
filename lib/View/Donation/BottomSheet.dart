// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:game/widgets/Sizebox/sizedboxheight.dart';
// import 'package:game/widgets/customButton.dart';
// import 'package:game/widgets/custom_icon_button.dart';
// import 'package:game/widgets/customtext.dart';
// import 'package:get/get.dart';
//
// import '../../Utils/app_style.dart';
// import '../../Utils/color_constant.dart';
// import '../../Utils/image_constant.dart';
//
// class DonationBottomSheet extends StatelessWidget {
//    DonationBottomSheet({Key? key}) : super(key: key);
//
//   // get tabController => null;
//
//   @override
//   Widget build(BuildContext context) {
//     return  Padding(
//       padding: EdgeInsets.only(
//           bottom: MediaQuery.of(context)
//               .viewInsets
//               .bottom),
//       child: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               padding: EdgeInsets.zero,
//               physics:
//               const BouncingScrollPhysics(),
//               itemCount: 2,
//               itemBuilder:
//                   (context, index) {
//                 return Container(
//                   width: 340,
//                   height: 206,
//                   margin:
//                   const EdgeInsets
//                       .all(10),
//                   decoration:
//                   BoxDecoration(
//                     borderRadius:
//                     BorderRadius
//                         .circular(
//                         5),
//                   ),
//                   child: ClipRRect(
//                     borderRadius:
//                     BorderRadius
//                         .circular(
//                         5),
//                     child: Stack(
//                       children: [
//                         Image.asset(
//                           AppImages
//                               .gamingImage3,
//                           fit: BoxFit
//                               .fill,
//                           width: double
//                               .infinity,
//                         ),
//                         Align(
//                           alignment:
//                           Alignment
//                               .bottomCenter,
//                           child:
//                           Container(
//                             width: double
//                                 .infinity,
//                             height: 50,
//                             decoration:
//                             BoxDecoration(
//                               gradient:
//                               LinearGradient(
//                                 begin: Alignment
//                                     .topCenter,
//                                 end: Alignment
//                                     .bottomCenter,
//                                 colors: [
//                                   Colors
//                                       .transparent,
//                                   Colors
//                                       .black
//                                       .withOpacity(0.25),
//                                   AppColors
//                                       .black
//                                       .withOpacity(0.6),
//                                   AppColors
//                                       .black,
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           top: 12.h,
//                           left: 11.w,
//                           child:
//                           Container(
//                             width: 58,
//                             height: 33,
//                             decoration:
//                             BoxDecoration(
//                               color: Colors
//                                   .black38,
//                               borderRadius:
//                               BorderRadius.circular(
//                                   4),
//                             ),
//                             child: Row(
//                               children: [
//                                 Image.asset(
//                                     AppImages.logopng),
//                                 const Text(
//                                   '1',
//                                   style:
//                                   TextStyle(
//                                     color:
//                                     Colors.white,
//                                     fontSize:
//                                     8,
//                                     fontWeight:
//                                     FontWeight.bold,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           bottom: 16.h,
//                           left: 20.w,
//                           child: Row(
//                             children: [
//                               Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 children: [
//                                   CustomText(
//                                     textStyle:
//                                     AppStyle.textStyle12Regular,
//                                     title:
//                                     'My first Cratch video',
//                                   ),
//                                   SizedBox(
//                                       height: 10),
//                                   CustomButton(
//                                     width:
//                                     98,
//                                     height:
//                                     29,
//                                     title:
//                                     'Mint',
//                                     icon:
//                                     Icons.arrow_forward_ios,
//                                     ontap:
//                                         () {},
//                                     gradient:
//                                     LinearGradient(
//                                       begin: Alignment.topLeft,
//                                       end: Alignment.bottomRight,
//                                       colors: [
//                                         AppColors.mainColor,
//                                         AppColors.indigoAccent,
//                                       ],
//                                     ),
//                                     AppStyle:
//                                     AppStyle.textStyle13SemiBold,
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/custom_icon_button.dart';
import '../../Utils/app_style.dart';
import '../../Utils/color_constant.dart';
import 'NFT_View/NftView.dart';
import 'Token_View/Token_view.dart';

class BottomSheetView extends StatelessWidget {
   BottomSheetView({Key? key,this.onTapNft}) : super(key: key);

  get tabController => null;
  Function()? onTapNft;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600, // Set the desired height here
      child: Column(
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 23),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Support',
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
                          Rect.fromLTWH(20.0, 0.0, 120.0, 70.0),
                        ),
                    ),
                  ),
                ),
              ),
              CustomSizedBoxHeight(height: 10),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Your support can make a difference',
                  style: AppStyle.textStyle11SemiBoldBlack,
                ),
              ),
              DefaultTabController(
                length: 2,
                initialIndex: 1,
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
                            ],
                          ).createShader(
                            const Rect.fromLTWH(
                                0.0, 0.0, 150.0, 70.0),
                          ),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      controller: tabController,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.mainColor,
                      ),
                      indicatorPadding: const EdgeInsets.only(
                        left: 30,
                        right: 30,
                        bottom: 10,
                        top: 55,
                      ),
                      tabs: const [
                        Tab(
                          text: 'Token',
                        ),
                        Tab(
                          text: 'NFT',
                        ),
                      ],
                    ),
                    SizedBox(
                      // height: 410,
                      height:
                      MediaQuery.of(context).size.height *
                          0.6,
                      child: TabBarView(
                        physics: const BouncingScrollPhysics(),
                        controller: tabController,
                        children:  [
                          ///Token
                          SelectableContainer(),
                          ///Nft
                          NFTView(onTapNft: onTapNft,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //////////////////////////////////
            ],
          ),
        ],
      ),
    );
  }
}
