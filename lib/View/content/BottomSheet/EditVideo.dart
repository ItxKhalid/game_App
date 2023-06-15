import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/custom_icon_button.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../Utils/app_style.dart';
import '../../../Utils/color_constant.dart';
import '../../../widgets/customButton.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../../../widgets/customtext.dart';
import '../../CreateALiveStream/components/TagesTextFeild.dart';
import 'SelectedContainer.dart';

class BottomSheetContentEditVideo extends StatefulWidget {
  BottomSheetContentEditVideo({Key? key, this.onTapNft}) : super(key: key);

  Function()? onTapNft;

  @override
  State<BottomSheetContentEditVideo> createState() =>
      _BottomSheetContentEditVideoState();
}

class _BottomSheetContentEditVideoState
    extends State<BottomSheetContentEditVideo> {
  get tabController => null;
   File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600, // Set the desired height here
      child: SingleChildScrollView(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Edit Video',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: [
                          AppColors.indigo,
                          AppColors.mainColor,
                        ],
                      ).createShader(
                        const Rect.fromLTWH(20.0, 0.0, 120.0, 70.0),
                      ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSizedBoxHeight(height: 15),
                  const CustomTextFormField(
                    title: 'Title',
                    hintText: 'Playing Sprinterlands',
                    star: '',
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
                          borderRadius: const BorderRadius.all(Radius.circular(6)),
                          child: GestureDetector(
                            onTap: (){
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
                                  decoration:  BoxDecoration(
                                    color: AppColors.gray75,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: AppColors.offwhite)
                                  ),
                                  child: Center(child: Icon(Icons.add,color: AppColors.offwhite),),
                                ),
                                  CustomSizedBoxHeight(height: 8),
                                  CustomText(
                                      textAlign: TextAlign.start,
                                      textStyle: AppStyle.textStyle9SemiBoldOffWhite,
                                      title:
                                      'Upload thumbnail'),
                              ],),
                            ),
                          ),
                        ),
                      ),
                      Container(
                          height: 77,
                          width: 143,
                          color: Colors.transparent,
                          child: imageFile == null
                              ? const Text('')
                              : ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.file(
                              imageFile!,
                              fit: BoxFit.cover,
                            ),
                          )
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
                  SelectableContainersContent(),
                  CustomSizedBoxHeight(height: 15),
                  CustomButton(
                    width: double.infinity,
                    title: 'Create',
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
              ),
            ),
          ],
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
