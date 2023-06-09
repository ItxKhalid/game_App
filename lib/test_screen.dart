// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// import 'package:flutter/material.dart';
//
//
// class CircularButtonDemo extends StatefulWidget {
//   @override
//   _CircularButtonDemoState createState() => _CircularButtonDemoState();
// }
//
// class _CircularButtonDemoState extends State<CircularButtonDemo>
//     with SingleTickerProviderStateMixin {
//   bool isExpanded = false;
//   late AnimationController _animationController;
//   late Animation<double> _expandAnimation;
//
//   @override
//   void initState() {
//     _animationController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 300),
//     );
//
//     _expandAnimation = Tween<double>(
//       begin: 0.0,
//       end: 100.0,
//     ).animate(CurvedAnimation(
//       parent: _animationController,
//       curve: Curves.easeInOut,
//     ));
//
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
//
//   void _toggleExpanded() {
//     setState(() {
//       isExpanded = !isExpanded;
//     });
//
//     if (isExpanded) {
//       _animationController.forward();
//     } else {
//       _animationController.reverse();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Circular Button Demo'),
//       ),
//       body: Center(
//         child: Stack(
//           // alignment: Alignment.center,
//           children: [
//             Positioned(
//               top: 20,
//               child: AnimatedContainer(
//                 duration: const Duration(milliseconds: 300),
//                 width: _expandAnimation.value,
//                 height: _expandAnimation.value,
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.red,
//                 ),
//               ),
//             ),
//             AnimatedOpacity(
//               duration: const Duration(milliseconds: 300),
//               opacity: isExpanded ? 0.0 : 1.0,
//               child: GestureDetector(
//                 onTap: _toggleExpanded,
//                 child: Container(
//                   width: 100,
//                   height: 100,
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.blue,
//                   ),
//                   child: const Icon(
//                     Icons.add,
//                     color: Colors.white,
//                     size: 40,
//                   ),
//                 ),
//               ),
//             ),
//             AnimatedOpacity(
//               duration: const Duration(milliseconds: 300),
//               opacity: isExpanded ? 1.0 : 0.0,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: 80,
//                     height: 80,
//                     margin: const EdgeInsets.all(8),
//                     decoration: const BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.green,
//                     ),
//                     child: const Icon(
//                       Icons.camera,
//                       color: Colors.white,
//                       size: 32,
//                     ),
//                   ),
//                   Container(
//                     width: 80,
//                     height: 80,
//                     margin: const EdgeInsets.all(8),
//                     decoration: const BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.orange,
//                     ),
//                     child: const Icon(
//                       Icons.image,
//                       color: Colors.white,
//                       size: 32,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// /*
//  *  Copyright 2020 chaobinwu89@gmail.com
//  *
//  *  Licensed under the Apache License, Version 2.0 (the "License");
//  *  you may not use this file except in compliance with the License.
//  *  You may obtain a copy of the License at
//  *
//  *      http://www.apache.org/licenses/LICENSE-2.0
//  *
//  *  Unless required by applicable law or agreed to in writing, software
//  *  distributed under the License is distributed on an "AS IS" BASIS,
//  *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  *  See the License for the specific language governing permissions and
//  *  limitations under the License.
//  */
//
//
//
//
//
//
//
// class HelloConvexAppBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: TextButton(
//             child: Text('Click to show full example'),
//             onPressed: () => Navigator.of(context).pushNamed('/bar'),
//           )),
//       bottomNavigationBar: ConvexAppBar(
//         style: TabStyle.react,
//         backgroundColor: Colors.transparent,
//         shadowColor: Colors.transparent,
//         items: [
//           TabItem(icon: Icons.list),
//           TabItem(icon: Container()),
//           TabItem(icon: Icons.assessment),
//         ],
//         initialActiveIndex: 1,
//         onTap: (int i) => print('click index=$i'),
//       ),
//     );
//   }
// }




/// This is ModelBottom Sheet
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:game/widgets/Sizebox/sizedboxheight.dart';
// import 'package:game/widgets/Sizebox/sizedboxwidth.dart';
// import 'package:game/widgets/customButton.dart';
// import 'package:game/widgets/custom_icon_button.dart';
// import 'package:game/widgets/customtext.dart';
// import 'package:get/get.dart';
// import 'Utils/app_style.dart';
// import 'Utils/color_constant.dart';
// import 'Utils/image_constant.dart';
//
// class TestScreen extends StatefulWidget {
//   const TestScreen({Key? key}) : super(key: key);
//
//   @override
//   State<TestScreen> createState() => _TestScreenState();
// }
//
// class _TestScreenState extends State<TestScreen> {
//   get tabController => null;
//   bool loading = false;
//   bool isVisible2 = false;
//   bool isVisible = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Test Screen')),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Align(
//             child: ElevatedButton(
//               onPressed: () {
//                 Get.to(showModalBottomSheet(
//                   barrierColor: AppColors.gray.withOpacity(0.4),
//                   backgroundColor: AppColors.bgGradient2A,
//                   isDismissible: true,
//                   useSafeArea: true,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(25.r),
//                       topRight: Radius.circular(25.r),
//                     ),
//                   ),
//                   isScrollControlled: true,
//                   context: context,
//                   builder: (BuildContext context) {
//                     return Text('data');
//                   },
//                 ));
//               },
//               child: const Text('Test'),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


