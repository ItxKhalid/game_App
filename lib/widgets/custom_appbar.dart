import 'package:flutter/material.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/View/Settings/settings_view.dart';
import 'package:game/widgets/Sizebox/sizedboxwidth.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../widgets/custom_icon_button.dart';
import '../Utils/color_constant.dart';
import '../View/Notification/Notification.dart';

class CustomAppBar extends StatelessWidget {
  Function()? drawerOntap;
  Function() searchOntap;
  Function()? notificationOntap;
  Function()? settingOntap;
  Function()? profileOntap;

  CustomAppBar(
      {Key? key,
      this.drawerOntap,
      this.notificationOntap,
      this.profileOntap,
      required this.searchOntap,
      this.settingOntap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 18),
          child: IconButtonWidget(
            ontap: drawerOntap!,
            containerColor: Colors.deepOrange,
            height: 35,
            width: 35,
            widget: const Icon(
              Icons.menu,
              size: 18,
              color: Colors.white,
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8),
          child: IconButtonWidget(
            ontap: searchOntap,
            height: 35,
            width: 35,
            widget: const Icon(
              Icons.search,
              size: 18,
              color: Colors.white30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 9, bottom: 9, right: 8),
          child: IconButtonWidget(
            ontap: () {
              PersistentNavBarNavigator.pushNewScreen(context,
                  screen: const NotificationView(), withNavBar: false);
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
              Icons.notifications,
              size: 18,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 9, bottom: 9, right: 11),
          child: IconButtonWidget(
            ontap: settingOntap!,
            height: 35,
            gradient: const LinearGradient(
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
              colors: [
                Color(0xffF9CE35),
                Color(0xffF9CE35),
                Color(0xffE98D02),
                Color(0xffE98D02),
              ],
            ),
            width: 35,
            widget: const Icon(
              Icons.settings,
              size: 18,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: IconButtonWidget(
            ontap: profileOntap!,
            height: 36,
            width: 40,
            widget: Image.asset(
              AppImages.imgEllipse37,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
