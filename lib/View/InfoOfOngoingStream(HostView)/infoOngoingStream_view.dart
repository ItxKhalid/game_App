import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/BottomNavBar.dart';
import 'package:game/widgets/custom_appbar.dart';
import 'package:get/get.dart';
import '../../Utils/color_constant.dart';
import '../../widgets/GradientTextWidget.dart';
import '../Drawer/Drawer_view.dart';
import '../Profile/profile_view.dart';
import '../Settings/settings_view.dart';
import 'Components/chat_screen.dart';
import 'Components/tabBarInfoScreen.dart';

class InfoOngoingStreamView extends StatefulWidget {
  const InfoOngoingStreamView({Key? key}) : super(key: key);

  @override
  State<InfoOngoingStreamView> createState() => _InfoOngoingStreamViewState();
}

class _InfoOngoingStreamViewState extends State<InfoOngoingStreamView> {
  get tabController => null;
  bool loading = false;
  bool isVisible2 = false;

  @override
  Widget build(BuildContext context) {
    return  DrawerWithNavBar(
      screen: Scaffold(
            // extendBodyBehindAppBar: true,
            backgroundColor: AppColors.bgGradient2,
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
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Row(
                      children: [
                        IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              Get.to(()=>const DashBoardScreen());
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
                              text: 'Information',
                            ),
                            Tab(text: 'Stream chat'),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          // height: 480,
                          height: MediaQuery.of(context).size.height * 0.676,
                          child: TabBarView(
                            physics: const BouncingScrollPhysics(),
                            controller: tabController,
                            children: const [
                              ///Information
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 23),
                                child: TabBarInfoScreen(),
                              ),
                              ///Stream Chat
                              ChatScreen()
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
    );
  }
}
