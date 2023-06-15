import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/Utils/color_constant.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/customtext.dart';
import 'package:get/get.dart';
import '../../Utils/AppConstant.dart';
import '../../widgets/custom_icon_button.dart';
import '../Donation/BottomSheet.dart';
import '../Donation/NFT_View/SuccessNft.dart';
import '../Donation/NFT_View/donationDetailScreen.dart';
import '../LiveStreamResCreator/livestream_rescreatorView.dart';
import 'StreamComponents/StreamCmntsRow1.dart';
import 'StreamComponents/StreamCmntsRow2.dart';
import 'StreamComponents/StreamCmntsRow3.dart';

class StreamComments extends StatefulWidget {
  const StreamComments({super.key});

  @override
  State<StreamComments> createState() => _StreamCommentsState();
}

class _StreamCommentsState extends State<StreamComments> {

  var msgtext = TextEditingController();
  var listviewcon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaflodbgcolor,
        body: SingleChildScrollView(
          clipBehavior: Clip.none,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 220.h,
                    width: 375.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.streamcomnts),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Get.back();
                              },
                              child: Container(
                                height: 40.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                  color: AppColors.backbutton.withOpacity(0.5),
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppColors.gray75)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: AppColors.iconcolor,
                                    size: 20.w,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                               onTap: (){
                                 Get.to(()=> const LiveStreamResCreator());
                               },
                              child: Container(
                                height: 40.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                  color: AppColors.backbutton,
                                  shape: BoxShape.circle,
                                    border: Border.all(color: AppColors.gray75)
                                ),
                                child: Center(
                                    child: Image.asset(
                                  AppImages.expandvctr,
                                  height: 25.h,
                                )),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  CustomSizedBoxHeight(height: 12.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const StreamCmntsRow1(),
                        CustomSizedBoxHeight(height: 26.h),
                         StreamCmntsRow2(
                           ontap: (){
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
                                 return BottomSheetView(
                                   onTapNft: () {
                                     Get.to(showModalBottomSheet(
                                       barrierColor: AppColors.gray
                                           .withOpacity(0.4),
                                       backgroundColor:
                                       AppColors.bgGradient2A,
                                       isDismissible: true,
                                       useSafeArea: true,
                                       shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.only(
                                           topLeft:
                                           Radius.circular(25.r),
                                           topRight:
                                           Radius.circular(25.r),
                                         ),
                                       ),
                                       isScrollControlled: true,
                                       context: context,
                                       builder: (BuildContext context) {
                                         return DonationDetailView(
                                             onTapMint: () {
                                               Get.to(showModalBottomSheet(
                                                 barrierColor: AppColors.gray
                                                     .withOpacity(0.4),
                                                 backgroundColor:
                                                 AppColors.bgGradient2A,
                                                 isDismissible: true,
                                                 useSafeArea: true,
                                                 shape:
                                                 RoundedRectangleBorder(
                                                   borderRadius:
                                                   BorderRadius.only(
                                                     topLeft:
                                                     Radius.circular(
                                                         25.r),
                                                     topRight:
                                                     Radius.circular(
                                                         25.r),
                                                   ),
                                                 ),
                                                 isScrollControlled: true,
                                                 context: context,
                                                 builder:
                                                     (BuildContext context) {
                                                   return const NftSuccessBottomSheet();
                                                 },
                                               ));
                                             });
                                       },
                                     ));
                                   },
                                 );
                               },
                             );
                           },
                         ),
                        CustomSizedBoxHeight(height: 26.h),
                        CustomText(
                            textStyle: AppStyle.textStyle14whiteSemiBold,
                            title: "Live chat room"),
                        CustomSizedBoxHeight(height: 8.h),
                        const StreamCmntsRow3(),

                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 165,),
              SizedBox(
                // height: MediaQuery.of(context).size.height*0.044,
                width: double.infinity,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  // elevation: 2,
                  // margin: EdgeInsets.all(7),
                  color: AppColors.fieldUnActive,
                  child: TextFormField(
                    // autocorrect: true,
                    // enableSuggestions: true,
                    maxLines: 5,
                    minLines: 1,
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.multiline,
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: msgtext,
                    style: TextStyle(color: AppColors.whiteA700, fontSize: 14),
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: InputBorder.none,
                      suffixIcon: msgtext.text.length != 0 ?Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButtonWidget(
                          ontap: () {},
                          height: 35,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppColors.mainColor,
                              AppColors.indigoAccent,
                            ],
                          ),
                          width: 35,
                          widget: const Icon(
                            Icons.send,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ) : Icon(Icons.emoji_emotions_outlined,color: AppColors.gray75,),
                      contentPadding: const EdgeInsets.only(left: 10),
                      hintStyle: TextStyle(
                          color: const Color(0xff7C7C7C),
                          fontWeight: FontWeight.w300,
                          fontFamily: AppConstant.interMedium,
                          fontSize: 15.sp),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
