import 'package:flutter/material.dart';
import 'package:game/View/InfoOfOngoingStream(HostView)/Components/videoContainer.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import '../../../Utils/app_style.dart';
import '../../../Utils/color_constant.dart';
import '../../../widgets/Sizebox/sizedboxheight.dart';
import '../../../widgets/customButton.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../../../widgets/customtext.dart';
import '../../CreateALiveStream/components/TagesTextFeild.dart';
import '../../CreateALiveStream/components/selectedContainer_widget.dart';

class TabBarInfoScreen extends StatefulWidget {
  const TabBarInfoScreen({Key? key}) : super(key: key);

  @override
  State<TabBarInfoScreen> createState() => _TabBarInfoScreenState();
}

class _TabBarInfoScreenState extends State<TabBarInfoScreen> {
  bool isVisible2 = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ///Edit Button
        IconButtonWidget(
          ontap: () {
            setState(() {
              isVisible2 = !isVisible2;
            });
          },
          width: 31,
          height: 31,
          widget: Icon(isVisible2 ? Icons.clear_rounded : Icons.edit,
              color: AppColors.whiteA700),
          gradient: LinearGradient(
            end: Alignment.bottomCenter,
            begin: Alignment.topLeft,
            colors: [
              AppColors.mainColor,
              AppColors.indigoAccent,
            ],
          ),
          boxShadow: [
            BoxShadow(
                color: AppColors.mainColor,
                blurRadius: 10,
                spreadRadius: -5,
                offset: Offset(0, 6))
          ],
        ),

        /// Visibility off
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSizedBoxHeight(height: 10),
              const VideoContainer(),
              CustomSizedBoxHeight(height: 10),
              CustomText(
                  textStyle: AppStyle.textStyle12regularWhite, title: 'Title'),
              CustomSizedBoxHeight(height: 10),
              CustomText(
                  textStyle: AppStyle.textStyle11SemiBoldWhite400,
                  title: 'Playing Sprinterlands'),
              CustomSizedBoxHeight(height: 15),
              CustomText(
                  textStyle: AppStyle.textStyle12regularWhite,
                  title: 'Description'),
              CustomSizedBoxHeight(height: 10),
              CustomText(
                  textStyle: AppStyle.textStyle11SemiBoldWhite400,
                  title: 'Enjoying Sprinterlands'),
              CustomSizedBoxHeight(height: 15),
              CustomText(
                  textStyle: AppStyle.textStyle12regularWhite, title: 'Tags'),
              CustomSizedBoxHeight(height: 8),
              SizedBox(
                height: 24,
                child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              end: Alignment.bottomRight,
                              begin: Alignment.topLeft,
                              colors: [
                                AppColors.mainColor,
                                AppColors.indigoAccent,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(50)),
                        child: CustomText(
                            textStyle: AppStyle.textStyle10Regular,
                            title: 'playtoearn'),
                      ),
                    );
                  },
                ),
              ),
              CustomSizedBoxHeight(height: 15),
              CustomText(
                  textStyle: AppStyle.textStyle12regularWhite,
                  title: 'Category'),
              CustomSizedBoxHeight(height: 10),
              CustomText(
                  textStyle: AppStyle.textStyle11SemiBoldWhite400,
                  title: 'Crypto'),
              CustomSizedBoxHeight(height: 15),
              CustomText(
                  textStyle: AppStyle.textStyle12regularWhite,
                  title: 'Visibility'),
              CustomSizedBoxHeight(height: 10),
              CustomText(
                  textStyle: AppStyle.textStyle11SemiBoldWhite400,
                  title: 'Public'),
            ],
          ),
        ),

        /// Visibility on
        Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Visibility(
            visible: isVisible2,
            maintainAnimation: true,
            maintainSize: true,
            maintainState: true,
            child: Container(
              color: AppColors.bgGradient2,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
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
                      ontap: () {
                        showTopSnackBar(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          Overlay.of(context),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.red)),
                            child: CustomSnackBar.error(
                              backgroundColor: Colors.red.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(0),
                              iconPositionLeft: 7,
                              iconRotationAngle: 90,
                              icon: Container(
                                  width: 31,
                                  height: 31,
                                  decoration: const BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.clear_rounded,
                                    color: AppColors.whiteA700,
                                    size: 20,
                                  )),
                              message:
                                  " There was an error! Please, try again latter",
                            ),
                          ),
                        );
                      },
                      width: double.infinity,
                      title: 'Save changes',
                      AppStyle: AppStyle.textStyle11SemiBoldBlack,
                      color: AppColors.fieldUnActive,
                    ),
                    CustomSizedBoxHeight(height: 100),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
