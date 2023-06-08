import 'dart:io';
import 'package:game/Provider/settings_provider.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/widgets/custom_appbar.dart';
import 'package:provider/provider.dart';
import '../../Utils/color_constant.dart';
import '../../widgets/CustomLabel.dart';
import '../../widgets/custom_text_form_field.dart';
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
    return SingleChildScrollView(
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
                drawerOntap: () {},
              ),
              leadingWidth: double.infinity,
            ),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: Consumer<SettingsProvider>(
                  builder: (context, settingsprovider, child) {
                    return ListView(
                      physics: BouncingScrollPhysics(),
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
                                    ).createShader(Rect.fromLTWH(
                                        0.0, 0.0, 200.0, 100.0)))),
                        ),
                        CustomSizedBoxHeight(height: 30.h),
                        //avatar row
                        AvatarRow(),
                        CustomSizedBoxHeight(height: 15.h),
                        CustomLabel(title: "Profile Cover"),
                        CustomSizedBoxHeight(height: 7.h),
                        ProfileCover(),
                        CustomSizedBoxHeight(height: 15.h),
                        CustomLabel(title: "Username"),
                        CustomSizedBoxHeight(height: 5.h),
                        CustomTextFormField(),
                        CustomSizedBoxHeight(height: 15.h),
                        CustomLabel(title: "About"),
                        CustomSizedBoxHeight(height: 5.h),
                        CustomTextFormField(),
                        CustomSizedBoxHeight(height: 15.h),
                        SaveChanges()
                      ],
                    );
                  },
                ))),
      ),
    );
  }
}
