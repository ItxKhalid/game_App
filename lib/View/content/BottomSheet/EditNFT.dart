import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';
import 'package:game/widgets/custom_icon_button.dart';
import 'package:get/get.dart';
import '../../../Utils/app_style.dart';
import '../../../Utils/color_constant.dart';
import '../../../Utils/image_constant.dart';
import '../../../widgets/customButton.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../../../widgets/customtext.dart';

class BottomSheetContentEditNFt extends StatelessWidget {
  BottomSheetContentEditNFt({Key? key,this.onTapNft}) : super(key: key);

  get tabController => null;
  Function()? onTapNft;

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
              padding:
              const EdgeInsets.symmetric(horizontal: 23),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Edit NFT',
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
                  CustomSizedBoxHeight(height: 10),
                  CustomText(textStyle: AppStyle.textStyle12Regular,
                      title: 'Category'
                  ),
                  CustomSizedBoxHeight(height: 5),
                  DropDown(),
                  CustomSizedBoxHeight(height: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      width: double.infinity,
                      height: 206,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset(AppImages.fortnite,fit: BoxFit.fill,width: double.infinity,),
                    ),
                  ),
                  CustomSizedBoxHeight(height: 15),
                  const CustomTextFormField(
                    title: 'Name',
                    star: '',
                  ),
                  CustomSizedBoxHeight(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                        width: 144,
                        child: CustomTextFormField(
                          title: 'Price',
                          star: '',
                        ),
                      ),
                      SizedBox(
                        width: 144,
                        child: CustomTextFormField(
                          title: 'Quantity',
                          star: '',
                        ),
                      ),
                    ],),
                  CustomSizedBoxHeight(height: 15),
                  CustomButton(
                    title: 'Create',
                    ontap: (){},
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
}
