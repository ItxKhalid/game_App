import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Utils/AppConstant.dart';
import '../../Utils/app_style.dart';
import '../../Utils/color_constant.dart';
import '../../Utils/image_constant.dart';
import '../../widgets/GradientTextWidget.dart';
import '../../widgets/Sizebox/sizedboxheight.dart';
import '../../widgets/Sizebox/sizedboxwidth.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/customtext.dart';

class LiveStreamActiveScreen extends StatefulWidget {
  const LiveStreamActiveScreen({super.key});

  @override
  State<LiveStreamActiveScreen> createState() => _LiveStreamActiveScreenState();
}

class _LiveStreamActiveScreenState extends State<LiveStreamActiveScreen> {

  var msgtext = TextEditingController();
  var listviewcon = TextEditingController();
  final List<String> images = [
    AppImages.john,
    AppImages.profilepic,
    AppImages.aibot,
  ];
  final List<String> message = [
    'An hour ago',
    'Good game ',
    'I saw a last stream',
  ];
  final List<String> names = [
    'John',
    'Emma',
    'Michael',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(AppImages.gamebg),
              fit: BoxFit.fill,
            )),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: AppColors.backbutton,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.iconcolor,
                          size: 20.w,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child: Image.asset(AppImages.john),
                        ),
                        CustomSizedBoxWidth(width: 5.w),
                        Column(
                          children: [
                            CustomText(
                                textStyle: AppStyle.textStyle12regularWhite,
                                title: "SkidrowGames"),
                            CustomSizedBoxHeight(height: 5.h),
                            CustomText(
                                textStyle: AppStyle.textStyle12offWhite,
                                title: "230k followers"),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 28.h,
                      width: 87.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xff2B59FE),
                                Color(0xff3485FF),
                              ])),
                      child: Center(
                        child: CustomText(
                            textStyle: AppStyle.textStyle11SemiBoldWhite600,
                            title: 'Follow'),
                      ),
                    ),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: AppColors.backbutton,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child: Image.asset(
                        AppImages.expandvctr,
                        height: 25.h,
                      )),
                    ),
                  ]),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(children: [
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    reverse: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                // width: 250.w,
                                child: Container(
                                  width: 228,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            AppColors.mainColor,
                                            AppColors.indigoAccent,
                                            AppColors.indigoAccent,
                                          ]),
                                      color: Theme.of(context)
                                          .toggleableActiveColor,
                                      borderRadius:
                                      const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        // topLeft: Radius.circular(10),
                                        bottomRight:
                                        Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      )),
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: AssetImage('${images[index]}'),
                                    ),
                                    title: CustomText(
                                        title: names[index],
                                        textStyle: AppStyle.textStyle12regularWhite),
                                    subtitle: CustomText(
                                        title: message[index],
                                        textStyle: AppStyle.textStyle9SemiBoldWhite),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
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
              ),
            ],),
          )
        ],
      ),
    ));
  }
}
