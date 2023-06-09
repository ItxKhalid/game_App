import 'dart:io';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game/BottomNavBar.dart';
import 'package:game/Provider/settings_provider.dart';
import 'package:game/View/Profile/profile_view.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/Utils/image_constant.dart';
import 'package:game/widgets/custom_appbar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import '../../Utils/app_style.dart';
import '../../Utils/color_constant.dart';
import '../../widgets/CustomLabel.dart';
import '../../widgets/CustomTextfieldLabel.dart';
import '../../widgets/customButton.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../Drawer/Drawer_view.dart';
import 'Components/avatar_row.dart';
import 'Components/profile_cover.dart';
import 'Components/saveChanges.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  late File imageFile;

  @override
  Widget build(BuildContext context) {
    return DrawerWithNavBar(
        screen: SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.bgGradient2,
              AppColors.bgGradient2,
              AppColors.bgGradient1,
            ],
          ),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: CustomAppBar(
                searchOntap: () {},
                settingOntap: () {},
                notificationOntap: () {},
                profileOntap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileView(),
                    ),
                  );
                },
                drawerOntap: () {
                  z.toggle!();
                },
              ),
              leadingWidth: double.infinity,
            ),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: Consumer<SettingsProvider>(
                  builder: (context, settingsprovider, child) {
                    return ListView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        CustomSizedBoxHeight(height: 30.h),
                        Center(
                          child: Text("Settings",
                              style: TextStyle(
                                  fontSize: 17.h,
                                  fontWeight: FontWeight.w700,
                                  foreground: Paint()
                                    ..shader = LinearGradient(
                                      colors: <Color>[
                                        AppColors.txtGradient1,
                                        AppColors.txtGradient2
                                        //add more color here.
                                      ],
                                    ).createShader(const Rect.fromLTWH(
                                        0.0, 0.0, 200.0, 100.0)))),
                        ),
                        CustomSizedBoxHeight(height: 30.h),
                        //avatar row
                        const AvatarRow(),
                        CustomSizedBoxHeight(height: 15.h),
                        CustomLabel(title: "Profile Cover"),
                        CustomSizedBoxHeight(height: 7.h),
                        const ProfileCover(),
                        CustomSizedBoxHeight(height: 15.h),
                        CustomSizedBoxHeight(height: 5.h),
                        const CustomTextFormField(
                          title: 'UserName',
                          hintText: 'JosefBenis',
                          star: '',
                        ),
                        CustomSizedBoxHeight(height: 15.h),
                        const CustomTextFormField(
                          star: '',
                          title: 'About',
                          hintText: 'Playing Sprinterlands!',
                        ),
                        CustomSizedBoxHeight(height: 15.h),
                        CustomButton(
                            color: AppColors.fieldUnActive,
                            AppStyle: AppStyle.textStyle12offWhite,
                            title: 'Save change',
                            ontap: () {
                              showTopSnackBar(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 60),
                                Overlay.of(context),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: Colors.red)),
                                  child: CustomSnackBar.error(
                                    backgroundColor:
                                        Colors.red.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(0),
                                    iconPositionLeft: 10,
                                    iconRotationAngle: 90,
                                    icon: Container(
                                        width: 20,
                                        height: 20,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.cancel,
                                          color: AppColors.redAccsent,
                                          size: 20,
                                        )),
                                    message:
                                        "There was an error! Please, try again latter",
                                  ),
                                ),
                              );
                            }),
                        CustomSizedBoxHeight(height: 80.h),
                      ],
                    );
                  },
                ))),
      ),
    ));
  }
}
