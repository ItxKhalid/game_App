import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/BottomNavBar.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/View/Profile/profile_view.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/custom_appbar.dart';
import 'package:get/get.dart';
import '../../Utils/AppConstant.dart';
import '../../Utils/app_style.dart';
import '../../Utils/color_constant.dart';
import '../../widgets/GradientTextWidget.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/customtext.dart';
import '../Drawer/Drawer_view.dart';
import '../Settings/settings_view.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {

  var msgtext = TextEditingController();
  var listviewcon = TextEditingController();
  List<bool> me = [
    false,
    true,
    false,
    true,
    true,
  ];

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
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: AppColors.mainColor,
                          )),
                      SizedBox(
                        width: 250,
                        child: ListTile(
                          tileColor: Colors.transparent,
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(AppImages.john),
                          ),
                          title: CustomText(
                              title: 'SkidrowGames',
                              textStyle: AppStyle.textStyle12regularWhite),
                          subtitle: CustomText(
                              title: 'Online',
                              textStyle: AppStyle.textStyle9SemiBoldWhite),
                        ),
                      )
                    ],
                  ),
                ),
                CustomSizedBoxHeight(height: 15),
            Expanded(
            child: ListView.builder(
              itemCount: me.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      me[index]
                          ? Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 22),
                                child: GradientTextWidget(
                                    text: 'You', size: 10),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        right: 25.w, top: 5.h, bottom: 5.h),
                                    padding: const EdgeInsets.all(12),
                                    // width: 228,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              AppColors.txtGradient4,
                                              // AppColors.indigoAccent,
                                              AppColors.indigoAccent,
                                            ]),
                                        borderRadius:
                                        const BorderRadius.only(
                                          // topRight: Radius.circular(10),
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        )),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Hello! I saw you watching my\nstream what do you think about \nit?',
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .textStyle11SemiBoldWhite600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 22),
                                child: GradientTextWidget(
                                    text: '${DateTime.now().hour.minutes}',
                                    size: 10),
                              ),
                            ],
                          )
                          : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 22),
                              child: GradientTextWidget(
                                  text: 'SkidrowGames', size: 10),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  // width: 250.w,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        right: 25.w,
                                        top: 5.h,
                                        bottom: 5.h),
                                    padding: EdgeInsets.all(12),
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
                                    child: Text(
                                      'Hi! I Hi! I really liked your last stream when will be the new one?',
                                      textAlign: TextAlign.start,
                                      style: AppStyle
                                          .textStyle11SemiBoldWhite600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 22),
                              child: GradientTextWidget(
                                  text: '1 hour age', size: 10),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
            SingleChildScrollView(
              child: SizedBox(
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
            )
              ],
            ),
          ),
        ));
  }
}
