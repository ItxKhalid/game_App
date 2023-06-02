import 'package:flutter/material.dart';
import 'package:game/Utils/color_constant.dart';

class GradientTextWidget extends StatelessWidget {
   GradientTextWidget({Key? key,this.text,this.size}) : super(key: key);

   String? text;
   double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w700,
        foreground: Paint()..shader = LinearGradient(
          colors: [
            AppColors.redAccsent,
            AppColors.indigo,
            AppColors.indigo,
          ],
        ).createShader(
          Rect.fromLTWH(0.0, 0.0, 150.0, 70.0),
        ),
      ),
    );
  }
}
