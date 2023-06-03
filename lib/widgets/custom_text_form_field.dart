import 'package:flutter/material.dart';
import 'package:game/Utils/color_constant.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';

class CustomTextFormField extends StatefulWidget {
  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

TextEditingController? controller;
String? title;

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: TextFormField(
        controller: controller,
        style: const TextStyle(
            color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            border: InputBorder.none,
            filled: true,
            fillColor: isTapped ? AppColors.mainColor : AppColors.fieldUnActive,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.indigo),
            ),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.redAccsent))),
        onTap: () {
          setState(() {
            isTapped = true;
          });
        },
        onFieldSubmitted: (value) {
          setState(() {
            isTapped = false;
          });
        },
        onChanged: (value) {
          if (value.isEmpty) {
            setState(() {
              isTapped = false;
            });
          }
        },
      ),
    );
  }
}
