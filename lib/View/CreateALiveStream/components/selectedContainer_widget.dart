import 'package:flutter/material.dart';
import 'package:game/Utils/app_style.dart';
import 'package:game/widgets/customtext.dart';

import '../../../Utils/color_constant.dart';
import '../../../widgets/custom_text_form_field.dart';

class SelectableContainers extends StatefulWidget {
  @override
  _SelectableContainersState createState() => _SelectableContainersState();
}

class _SelectableContainersState extends State<SelectableContainers> {
  int selectedContainer = 1;

  void selectContainer(int index) {
    setState(() {
      selectedContainer = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                selectContainer(1);
              },
              child: Container(
                height: 70,
                width: 147,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    gradient: selectedContainer == 1
                        ? LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                                AppColors.indigoAccent,
                                AppColors.mainColor,
                                AppColors.mainColor,
                              ])
                        : LinearGradient(colors: [
                            AppColors.fieldUnActive,
                            AppColors.fieldUnActive,
                          ])),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          textStyle: AppStyle.textStyle11SemiBoldWhite600,
                          title: 'Public'),
                      Spacer(),
                      CustomText(
                          textStyle: AppStyle.textStyle8White600,
                          title: 'Everyone can watch your \nstream'),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                selectContainer(2);
              },
              child: Container(
                height: 70,
                width: 147,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    gradient: selectedContainer == 2
                        ? LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                                AppColors.indigoAccent,
                                AppColors.mainColor,
                                AppColors.mainColor,
                              ])
                        : LinearGradient(colors: [
                            AppColors.fieldUnActive,
                            AppColors.fieldUnActive,
                          ])),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          textStyle: AppStyle.textStyle11SemiBoldWhite600,
                          title: 'Private'),
                      Spacer(),
                      CustomText(
                          textStyle: AppStyle.textStyle8White600,
                          title: 'Everyone can watch your \nstream'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
//
// class CustomTextFormField extends StatefulWidget {
//   @override
//   _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
// }
//
// class _CustomTextFormFieldState extends State<CustomTextFormField> {
//   TextEditingController _textEditingController = TextEditingController();
//   FocusNode _focusNode = FocusNode();
//   bool _hasError = false;
//   String? _errorMessage;
//
//   @override
//   void initState() {
//     super.initState();
//     _focusNode.addListener(() {
//       if (!_focusNode.hasFocus) {
//         setState(() {
//           _updateHasError();
//         });
//       }
//     });
//   }
//
//   @override
//   void dispose() {
//     _textEditingController.dispose();
//     _focusNode.dispose();
//     super.dispose();
//   }
//
//   String? _validateTextField(String value) {
//     if (value.isEmpty) {
//       return 'This field is required';
//     }
//
//     return null;
//   }
//
//   void _handleSubmitted(String value) {
//     setState(() {
//       _errorMessage = _validateTextField(value);
//       _updateHasError();
//     });
//   }
//
//   void _updateHasError() {
//     _hasError = _errorMessage != null && _textEditingController.text.isNotEmpty;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: _textEditingController,
//       focusNode: _focusNode,
//       onChanged: _handleSubmitted,
//       style: TextStyle(
//         color: Colors.black,
//       ),
//       decoration: InputDecoration(
//         filled: true,
//         fillColor: _hasError ? Colors.redAccent : Colors.grey,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(3),
//           borderSide: BorderSide.none,
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(3),
//           borderSide: BorderSide(
//             color: Colors.indigoAccent,
//           ),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(3),
//           borderSide: BorderSide(
//             color: Colors.redAccent,
//           ),
//         ),
//         focusedErrorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(3),
//           borderSide: BorderSide(
//             color: Colors.redAccent,
//           ),
//         ),
//         errorText: _hasError ? _errorMessage : null,
//       ),
//     );
//   }
// }
