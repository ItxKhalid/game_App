import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/widgets/customButton.dart';
import 'package:game/widgets/customtext.dart';
import '../../../Utils/app_style.dart';
import '../../../Utils/color_constant.dart';
import '../../../Utils/image_constant.dart';

class NFTView extends StatelessWidget {
   NFTView({Key? key,this.onTapNft}) : super(key: key);

  Function()? onTapNft;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  width: 340,
                  height: 206,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Stack(
                      children: [
                        Image.asset(
                          AppImages.gamingImage3,
                          fit: BoxFit.fill,
                          width: double.infinity,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.25),
                                  AppColors.black.withOpacity(0.6),
                                  AppColors.black,
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 12.h,
                          left: 11.w,
                          child: Container(
                            width: 58,
                            height: 33,
                            decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              children: [
                                Image.asset(AppImages.logopng),
                                const Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 16.h,
                          left: 20.w,
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    textStyle: AppStyle.textStyle12Regular,
                                    title: 'My first Cratch video',
                                  ),
                                  SizedBox(height: 10),
                                  CustomButton(
                                    width: 98,
                                    height: 29,
                                    title: 'Mint',
                                    icon: Icons.arrow_forward_ios,
                                    ontap: onTapNft!,
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        AppColors.mainColor,
                                        AppColors.indigoAccent,
                                      ],
                                    ),
                                    AppStyle: AppStyle.textStyle13SemiBold,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
