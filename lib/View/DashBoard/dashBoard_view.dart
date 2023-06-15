import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/View/DashBoard/Components/CarouselSlider_container.dart';
import 'package:game/View/Drawer/Drawer_view.dart';
import 'package:game/View/Profile/profile_view.dart';
import 'package:game/View/Settings/settings_view.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/customtext.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../Utils/color_constant.dart';
import '../../widgets/GradientTextWidget.dart';
import '../../widgets/custom_appbar.dart';
import '../StreamComments/StreamComments_View.dart';
import 'Components/topStreams_widget.dart';
import 'Components/topVideos_widget.dart';

class DashBoardView extends StatefulWidget {
  Function() onTapDrawer;

  DashBoardView({required this.onTapDrawer});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  final List<String> pages = [
    'Page 1',
    'Page 2',
    'Page 3',
    'Page 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
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
        backgroundColor: Colors.transparent,
        body: Column(
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
                  Get.offAll(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SizedBox(
                height: MediaQuery.of(context).size.height *0.85,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(
                      height: 167,
                      child: CarouselSlider.builder(
                        itemCount: 4,
                        options: CarouselOptions(
                          height: 167,
                          aspectRatio: 340 / 167,
                          viewportFraction: 1.0,
                          onPageChanged:
                              (int page, CarouselPageChangedReason reason) {
                            setState(() {
                              _currentPage = page;
                            });
                          },
                        ),
                        itemBuilder: (context, index, realIndex) {
                          return const CarouselSliderContainer();
                        },
                      ),
                    ),
                    CustomSizedBoxHeight(height: 10),
                    _buildIndicator(),
                    CustomSizedBoxHeight(height: 30),

                    /// Top Streamers and Like Stories
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GradientTextWidget(
                          text: 'Top Streamers',
                          size: 11,
                        ),
                        CustomText(
                          textStyle:
                              TextStyle(color: AppColors.gray75, fontSize: 10),
                          title: 'View all',
                        )
                      ],
                    ),
                    CustomSizedBoxHeight(height: 20),
                    SizedBox(
                      height: 75,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 65,
                            child: Column(
                              children: [
                                Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                    child: Image.asset(AppImages.john)),
                                const SizedBox(height: 8),
                                CustomText(
                                    textStyle: AppStyle.textStyle10Regular,
                                    title: 'Name${index}')
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    CustomSizedBoxHeight(height: 13),

                    /// Top Streams with listVertical
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GradientTextWidget(
                          text: 'Top Streams',
                          size: 11,
                        ),
                        CustomText(
                          textStyle:
                              TextStyle(color: AppColors.gray75, fontSize: 10),
                          title: 'View all',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                PersistentNavBarNavigator.pushNewScreen(
                                    context,
                                    screen: const StreamComments(),
                                  withNavBar: false
                                );
                              },
                              child: const TopStreamsListView());
                        },
                      ),
                    ),
                    CustomSizedBoxHeight(height: 13),

                    /// Top Videos with listVertical
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GradientTextWidget(
                          text: 'Top Videos',
                          size: 11,
                        ),
                        CustomText(
                          textStyle:
                              TextStyle(color: AppColors.gray75, fontSize: 10),
                          title: 'View all',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const TopVideosWidgets();
                        },
                      ),
                    ),
                    CustomSizedBoxHeight(height: 50),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(pages.length, (int index) {
        return Container(
          width: _currentPage == index ? 30 : 10,
          height: 10,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: _currentPage == index
                ? Colors.white
                : Colors.grey, // Replace with your desired indicator colors
          ),
        );
      }),
    );
  }
}
