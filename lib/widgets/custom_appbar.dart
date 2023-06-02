import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/widgets/Sizebox/sizedboxwidth.dart';
import '../../widgets/custom_icon_button.dart';
import '../Utils/color_constant.dart';

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
              color: Colors.white,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8),
          child: IconButtonWidget(
            ontap: searchOntap,
            height: 35,
            width: 35,
            widget: const Icon(
              Icons.search,
              color: Colors.white30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 9, bottom: 9, right: 8),
          child: IconButtonWidget(
            ontap: () {},
            height: 35,
            containerColor: Colors.indigoAccent,
            width: 35,
            widget: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 9, bottom: 9, right: 11),
          child: IconButtonWidget(
            ontap: () {},
            height: 35,
            containerColor: Colors.yellow.shade900,
            width: 35,
            widget: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: IconButtonWidget(
            ontap: () {},
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
