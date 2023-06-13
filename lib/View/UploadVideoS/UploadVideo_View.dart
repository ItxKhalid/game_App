import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:game/widgets/GradientTextWidget.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../Utils/app_style.dart';
import '../../Utils/color_constant.dart';
import '../../widgets/customButton.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/customtext.dart';
import '../CreateALiveStream/components/TagesTextFeild.dart';
import '../CreateALiveStream/components/selectedContainer_widget.dart';
import 'package:file_picker/file_picker.dart';

class UploadVideoView extends StatefulWidget {
  UploadVideoView({Key? key}) : super(key: key);

  @override
  State<UploadVideoView> createState() => _UploadVideoViewState();
}

class _UploadVideoViewState extends State<UploadVideoView> {
  File? imageFile;

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSizedBoxHeight(height: 40),
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 31,
                      width: 31,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.gray75),
                        shape: BoxShape.circle,
                      ),
                      child: IconButtonWidget(
                        ontap: () {
                          Navigator.pop(context);
                        },
                        height: 31,
                        width: 31,
                        containerColor: AppColors.bgGradient2,
                        widget: Icon(
                          Icons.clear,
                          color: AppColors.mainColor,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ),
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
                      text: 'Details',
                      size: 19,
                    )
                  ],
                ),
                CustomSizedBoxHeight(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomSizedBoxHeight(height: 15),
                    const CustomTextFormField(
                      title: 'Title',
                      hintText: 'Playing Sprinterlands',
                      star: '*',
                    ),
                    CustomSizedBoxHeight(height: 15),
                    const CustomTextFormField(
                      title: 'Description',
                      hintText: 'Just chatting',
                      star: '',
                    ),
                    CustomSizedBoxHeight(height: 15),
                    CustomText(
                        textAlign: TextAlign.start,
                        textStyle: AppStyle.textStyle12regularWhite,
                        title: 'Thumbnail'),
                    CustomSizedBoxHeight(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DottedBorder(
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(6),
                          color: AppColors.offwhite,
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6)),
                            child: GestureDetector(
                              onTap: () {
                                _getFromGallery();
                              },
                              child: Container(
                                height: 77,
                                width: 143,
                                color: AppColors.fieldUnActive,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 34,
                                      height: 34,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff9A9A9D),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white60)),
                                      child: const Center(
                                        child: Icon(Icons.add,
                                            color: Colors.white60),
                                      ),
                                    ),
                                    CustomSizedBoxHeight(height: 8),
                                    CustomText(
                                        textAlign: TextAlign.start,
                                        textStyle:
                                            AppStyle.textStyle9SemiBoldOffWhite,
                                        title: 'Upload thumbnail'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                           borderRadius: BorderRadius.circular(6),
                          child: Container(
                              height: 77,
                              width: 147,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6)),
                              child: imageFile != null
                                  ? Image.file(
                                      imageFile!,
                                      fit: BoxFit.cover,
                                    )
                                  : const Text('')),
                        ),
                      ],
                    ),
                    CustomSizedBoxHeight(height: 15),
                    const TagsTextField(),
                    CustomText(
                        textAlign: TextAlign.start,
                        textStyle: AppStyle.textStyle9SemiBoldWhite,
                        title:
                            'Tags can be useful if content in your stream is commonly misspelled'),
                    CustomSizedBoxHeight(height: 15),
                    CustomText(
                        textStyle: AppStyle.textStyle12Regular,
                        title: 'Category'),
                    CustomSizedBoxHeight(height: 5),
                    DropDown(),
                    CustomText(
                        textAlign: TextAlign.start,
                        textStyle: AppStyle.textStyle9SemiBoldWhite,
                        title:
                            'Add a category to your stream, so users could find it more easily'),
                    CustomSizedBoxHeight(height: 15),
                    CustomText(
                        textAlign: TextAlign.left,
                        textStyle: AppStyle.textStyle12regularWhite,
                        title: 'Visibility'),
                    CustomSizedBoxHeight(height: 20),
                    SelectableContainers(),
                    CustomSizedBoxHeight(height: 30),
                    CustomButton(
                      title: 'Upload',
                      ontap: () {},
                      AppStyle: AppStyle.textStyle12regularWhite,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            AppColors.indigoAccent,
                            AppColors.mainColor,
                            AppColors.mainColor,
                          ]),
                    ),
                    CustomSizedBoxHeight(height: 60),
                  ],
                )
              ],
            ),
          ),
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
