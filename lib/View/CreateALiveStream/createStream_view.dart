import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:game/BottomNavBar.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/View/CreateALiveStream/success_view.dart';
import 'package:game/View/Profile/profile_view.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/custom_appbar.dart';
import 'package:game/widgets/customtext.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../Utils/color_constant.dart';
import '../../Utils/image_constant.dart';
import '../../widgets/GradientTextWidget.dart';
import '../../widgets/customButton.dart';
import '../../widgets/custom_text_form_field.dart';
import '../Analytics/analytics_view.dart';
import '../Drawer/Drawer_view.dart';
import '../Followers/followers.dart';
import '../Settings/settings_view.dart';
import 'components/TagesTextFeild.dart';
import 'components/selectedContainer_widget.dart';


class CreateStream extends StatefulWidget {
  const CreateStream({Key? key}) : super(key: key);

  @override
  State<CreateStream> createState() => _CreateStreamState();
}

class _CreateStreamState extends State<CreateStream> {
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
              settingOntap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsView(),
                  ),
                );
              },
              profileOntap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileView(),
                  ),
                );
              },
              notificationOntap: (){},
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
                  const CustomTextFormField(
                    title: 'Title',
                    star: '*',
                  ),
                  CustomSizedBoxHeight(height: 15),
                  const CustomTextFormField(
                    title: 'Description',
                    star: '',
                  ),
                  CustomSizedBoxHeight(height: 15),
                  const TagsTextField(),
                  CustomText(
                      textAlign: TextAlign.start,
                      textStyle: AppStyle.textStyle9SemiBoldWhite,
                      title:
                      'Tags can be useful if content in your stream is commonly misspelled'),
                  CustomSizedBoxHeight(height: 15),
                  CustomText(textStyle: AppStyle.textStyle12Regular,
                      title: 'Category'
                  ),
                  CustomSizedBoxHeight(height: 5),
                  DropDown(),
                  CustomText(
                      textAlign: TextAlign.start,
                      textStyle: AppStyle.textStyle9SemiBoldWhite,
                      title:
                      'Add a category to your stream, so users could find it more easily'),
                  CustomSizedBoxHeight(height: 20),
                  CustomText(
                      textAlign: TextAlign.left,
                      textStyle: AppStyle.textStyle12regularWhite,
                      title: 'Visibility'),
                  CustomSizedBoxHeight(height: 20),
                  SelectableContainers(),
                  CustomSizedBoxHeight(height: 20),
                  CustomButton(
                    ontap: (){
                      Get.to(()=>const SuccessView());
                    },
                    title: 'Start Stream',
                    AppStyle: AppStyle.textStyle11SemiBoldBlack,
                    color: AppColors.fieldUnActive,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
