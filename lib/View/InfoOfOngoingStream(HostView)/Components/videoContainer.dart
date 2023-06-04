import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/widgets/custom_icon_button.dart';

import '../../../Utils/color_constant.dart';
import '../../../Utils/image_constant.dart';

class VideoContainer extends StatelessWidget {
  const VideoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 169,
      // margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Stack(
          children: [
            Image.asset(AppImages.fortnite,fit: BoxFit.cover,width: double.infinity,),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 169,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors:[
                          Colors.transparent,
                          Colors.black.withOpacity(0.3),
                          Colors.black.withOpacity(0.4),
                          AppColors.black.withOpacity(0.5),
                          AppColors.black.withOpacity(0.6),
                          AppColors.black.withOpacity(0.7),
                          AppColors.black,
                        ]
                    )
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: IconButtonWidget(
                  ontap: (){},
                height: 60,
                width: 60,
                containerColor: AppColors.blue.withOpacity(0.9),
                widget: Icon(Icons.play_arrow_rounded,color: AppColors.whiteA700,size: 45),
              ),
            )
          ],
        ),
      ),
    );
  }
}
