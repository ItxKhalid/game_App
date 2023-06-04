import 'package:flutter/material.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/widgets/customtext.dart';

import '../../Utils/image_constant.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.success12),
              fit: BoxFit.cover,
            )),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: CustomText(
              textAlign: TextAlign.center,
              title: 'Stream was created successfully,\nand will start in a moment',
              textStyle: AppStyle.textStyle16Bold600,
            ),
          ),
        ),
      ),
    );
  }
}
