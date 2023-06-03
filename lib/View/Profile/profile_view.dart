import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/custom_appbar.dart';
import 'package:image_picker/image_picker.dart';
import '../../Utils/color_constant.dart';
import 'Components/ProfileDetails.dart';
import 'Components/RoundButtonProfile.dart';
import 'Components/circularProfile.dart';
import 'Components/profileListView.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  late File imageFile;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal.withOpacity(0.4),
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.profileBackG),
              alignment: Alignment.topCenter,
            ),
          ),
          child: Scaffold(
              extendBodyBehindAppBar: true,
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                leading: CustomAppBar(
                  searchOntap: () {},
                  drawerOntap: () {},
                ),
                leadingWidth: double.infinity,
              ),
              body: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Stack(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 200.h),
                        child: Container(
                            height: 631.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.vertical(top: Radius.circular(30.r)),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    AppColors.bgGradient2,
                                    AppColors.bgGradient2,
                                    AppColors.bgGradient1,
                                  ]),
                            ),
                            child: Column(
                              children:  [
                                ///All details
                                ProfileDetails(),
                                ///All Round Buttons
                                 RoundButtonProfile(),
                                CustomSizedBoxHeight(height: 20),
                                ///Profile list videos
                                Expanded(
                                  child: ListView.builder(
                                    padding: EdgeInsets.zero,
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return const ProfileListView();
                                    },
                                  ),
                                ),

                              ],
                            ))),
                    /// Profile image widget
                    const CircularProfile(),
                  ]),
                ],
              )),
        ),
      ),
    );
  }

  /// Get from gallery
  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}
