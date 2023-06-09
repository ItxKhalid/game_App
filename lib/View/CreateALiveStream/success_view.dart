import 'dart:async';

import 'package:flutter/material.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/widgets/customtext.dart';
import 'package:get/get.dart';

import '../../Utils/image_constant.dart';
import '../InfoOfOngoingStream(HostView)/infoOngoingStream_view.dart';

class SuccessView extends StatefulWidget {
  const SuccessView({Key? key}) : super(key: key);

  @override
  State<SuccessView> createState() => _SuccessViewState();
}

class _SuccessViewState extends State<SuccessView> {
  void initState() {
    Timer(const Duration(seconds: 3), () async {
      Get.to(() => const InfoOngoingStreamView());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(AppImages.success),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: CustomText(
              textAlign: TextAlign.center,
              title:
                  'Stream was created successfully,\nand will start in a moment',
              textStyle: AppStyle.textStyle16Bold600,
            ),
          ),
        ),
      ),
    );
  }
}
