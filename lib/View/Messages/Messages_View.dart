import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:game/BottomNavBar.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/View/Profile/profile_view.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/custom_appbar.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../Utils/app_style.dart';
import '../../Utils/color_constant.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/customtext.dart';
import '../Analytics/analytics_view.dart';
import '../Drawer/Drawer_view.dart';
import '../Followers/followers.dart';
import '../Settings/settings_view.dart';
import 'AddMessage_View.dart';
import 'ChatView.dart';

class MessagesView extends StatefulWidget {
  const MessagesView({Key? key}) : super(key: key);

  @override
  State<MessagesView> createState() => _MessagesViewState();
}

class _MessagesViewState extends State<MessagesView> {
  final List<String> images = [
    AppImages.john,
    AppImages.profilepic,
    AppImages.aibot,
    AppImages.avatar76,
    AppImages.john,
  ];

  final List<String> names = [
    'John',
    'Emma',
    'Michael',
    'Sophia',
    'Daniel',
  ];
  final List<String> time = [
    'An hour',
    '7:30pm',
    '8:30pm',
    '9:00pm',
    '7:40am',
  ];

  final List<String> description = [
    'SkidrowGames: Hello, I really like your last... ',
    'You: Yes, I think so  ',
    'You: Hi, how are you doing?',
    'Axiemaster: See you soon!',
    'SpShark: Hi there! ',
  ];
  final List<bool> isOnline = [
    false,
    true,
    false,
    true,
    false,
  ];
  final List<bool> isMessage = [
    true,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'MessagesView',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: [
                              AppColors.mainColor,
                              AppColors.indigo,
                            ],
                          ).createShader(
                            const Rect.fromLTWH(0.0, 0.0, 150.0, 70.0),
                          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButtonWidget(
                        ontap: () {
                          // Get.to(() => const AddMessagesView());
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const AddMessagesView(),));
                        },
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
                          Icons.add,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Stack(
                        fit: StackFit.loose,
                        clipBehavior: Clip.none,
                        children: [
                          GestureDetector(
                            onTap: () {
                              PersistentNavBarNavigator.pushNewScreen(
                                  context,
                                  screen: const ChatView(),withNavBar: false);
                            },
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage(
                                    '${images[index]}'),
                              ),
                              title: CustomText(
                                  title: names[index],
                                  textStyle: AppStyle
                                      .textStyle12regularWhite),
                              subtitle: CustomText(
                                  title: description[index],
                                  textStyle: AppStyle
                                      .textStyle9SemiBoldWhite),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment
                                    .center,
                                children: [
                                  CustomText(
                                      textStyle:
                                      AppStyle.textStyle9SemiBoldOffWhite,
                                      title: '${time[index]}'),
                                  CustomSizedBoxHeight(height: 5),
                                  isMessage[index]
                                      ? Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          AppColors.mainColor,
                                          AppColors.indigoAccent,
                                        ],
                                      ),
                                    ),
                                    child: Center(
                                      child: CustomText(
                                          textStyle: AppStyle
                                              .textStyle12regularWhite,
                                          title: '1'),
                                    ),
                                  )
                                      : const Text(''),
                                ],
                              ),
                            ),
                          ),
                          isOnline[index]
                              ? Positioned(
                            top: 45,
                            left: 45,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle),
                            ),
                          )
                              : const Text(''),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
