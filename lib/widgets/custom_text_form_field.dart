import 'package:flutter/material.dart';
import 'package:game/Utils/color_constant.dart';
import 'package:game/widgets/Sizebox/sizedboxheight.dart';

class CustomTextFormField extends StatefulWidget {
  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),
            children: [
              TextSpan(
                text: 'Email',
                style: TextStyle(color: Colors.white),
              ),
              TextSpan(
                text: ' *',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        CustomSizedBoxHeight(height: 5),
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: TextFormField(
            style: const TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),
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
                borderSide: BorderSide(color: AppColors.redAccsent)
              )
            ),
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
        ),
      ],
    );
  }
}
