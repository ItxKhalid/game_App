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

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freestyle_speed_dial/freestyle_speed_dial.dart';
// import 'package:tuple/tuple.dart';


// class ExamplePage extends StatelessWidget {
//   const ExamplePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           padding: EdgeInsets.symmetric(
//               horizontal: min(200, MediaQuery.of(context).size.width / 3),
//               vertical: 200),
//           child: Wrap(
//             spacing: 200,
//             runSpacing: 200,
//             children: [
//               // Example 1 (Vertical Pop-In):
//               // Simple speed dial where every sub-button/item animates starting
//
//               // Example 2 (Vertical Slide-In-Place):
//               // Simple speed dial where every sub-button/item animates starting
//               // from the FABs position to its final position
//
//               // Example 3 (Diagonal Slide-In-Place):
//               // Simple speed dial where every sub-button/item animates starting
//               // from the FABs position to its final position.
//
//               // Example 4 (Radial Slide-In-Place):
//               // Simple speed dial where every sub-button/item animates starting
//               // from the FABs position to its final position.
//               SpeedDialBuilder(
//                 buttonAnchor: Alignment.center,
//                 itemAnchor: Alignment.center,
//                 buttonBuilder: (context, isActive, toggle) =>
//                     FloatingActionButton(
//                       onPressed: toggle,
//                       child: AnimatedRotation(
//                         duration: const Duration(milliseconds: 300),
//                         curve: Curves.easeInOutCubicEmphasized,
//                         turns: isActive ? 0.125 : 0,
//                         child: const Icon(Icons.add),
//                       ),
//                     ),
//                 itemBuilder: (context, Widget item, i, animation) {
//                   // radius in relative units to each item
//                   const radius = 1.3;
//                   // angle in radians
//                   final angle = i * (pi / 4) + pi;
//
//                   final targetOffset = Offset(
//                     radius * cos(angle),
//                     radius * sin(angle),
//                   );
//
//                   final offsetAnimation = Tween<Offset>(
//                     begin: Offset.zero,
//                     end: targetOffset,
//                   ).animate(animation);
//
//                   return SlideTransition(
//                     position: offsetAnimation,
//                     child: FadeTransition(
//                       opacity: animation,
//                       child: item,
//                     ),
//                   );
//                 },
//                 items: [
//                   FloatingActionButton.small(
//                     onPressed: () {},
//                     child: const Icon(Icons.hub),
//                   ),
//                   FloatingActionButton.small(
//                     onPressed: () {},
//                     child: const Icon(Icons.file_download),
//                   ),
//                   FloatingActionButton.small(
//                     onPressed: () {},
//                     child: const Icon(Icons.wallet),
//                   ),
//                 ],
//               ),
//
//               // Example 5 (Vertical Pop-In With Labels):
//               // Advanced speed dial where every sub-button/item has an additional label.
//               // Both the item and the label start animating from their target position.
//               SpeedDialBuilder(
//                 buttonAnchor: Alignment.topCenter,
//                 itemAnchor: Alignment.bottomCenter,
//                 buttonBuilder: (context, isActive, toggle) =>
//                     FloatingActionButton(
//                       onPressed: toggle,
//                       child: AnimatedRotation(
//                         duration: const Duration(milliseconds: 300),
//                         curve: Curves.easeInOutCubicEmphasized,
//                         turns: isActive ? 0.125 : 0,
//                         child: const Icon(Icons.add),
//                       ),
//                     ),
//                 itemBuilder: (context, Tuple3<IconData, String, LayerLink> item,
//                     i, animation) {
//                   return FractionalTranslation(
//                     translation: Offset(0, -i.toDouble()),
//                     child: CompositedTransformTarget(
//                       link: item.item3,
//                       child: ScaleTransition(
//                         scale: animation,
//                         child: FloatingActionButton.small(
//                           onPressed: () {},
//                           child: Icon(item.item1),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//                 secondaryItemBuilder: (context,
//                     Tuple3<IconData, String, LayerLink> item, i, animation) {
//                   return CompositedTransformFollower(
//                     link: item.item3,
//                     targetAnchor: Alignment.centerRight,
//                     followerAnchor: Alignment.centerLeft,
//                     child: FadeTransition(
//                       opacity: animation,
//                       child: Card(
//                         margin: const EdgeInsets.only(left: 10),
//                         child: Padding(
//                           padding: const EdgeInsets.all(5),
//                           child: Text(item.item2),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//                 items: [
//                   // You can also define and use your own container class
//                   // if you don't want to use the tuple package.
//                   Tuple3<IconData, String, LayerLink>(
//                       Icons.hub, 'Hub', LayerLink()),
//                   Tuple3<IconData, String, LayerLink>(
//                       Icons.track_changes, 'Track', LayerLink()),
//                   Tuple3<IconData, String, LayerLink>(
//                       Icons.ice_skating_outlined, 'Ice', LayerLink())
//                 ],
//               ),
//
//               // Example 6 (Vertical Slide-In-Place With Labels):
//               // Advanced speed dial where every sub-button/item has an additional label.
//               // Both the item and the label start animating from their target position.
//               SpeedDialBuilder(
//                 buttonBuilder: (context, isActive, toggle) =>
//                     FloatingActionButton(
//                       onPressed: toggle,
//                       child: AnimatedRotation(
//                         duration: const Duration(milliseconds: 300),
//                         curve: Curves.easeInOutCubicEmphasized,
//                         turns: isActive ? 0.125 : 0,
//                         child: const Icon(Icons.add),
//                       ),
//                     ),
//                 reverse: true,
//                 itemBuilder: (context, Tuple3<IconData, String, LayerLink> item,
//                     i, animation) {
//                   final offsetAnimation = Tween<Offset>(
//                     begin: Offset.zero,
//                     end: Offset(0, -i - 1),
//                   ).animate(animation);
//                   return SlideTransition(
//                     position: offsetAnimation,
//                     child: FadeTransition(
//                       opacity: animation,
//                       child: CompositedTransformTarget(
//                         link: item.item3,
//                         child: FloatingActionButton.small(
//                           onPressed: () {},
//                           child: Icon(item.item1),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//                 secondaryItemBuilder: (context,
//                     Tuple3<IconData, String, LayerLink> item, i, animation) {
//                   return CompositedTransformFollower(
//                     link: item.item3,
//                     targetAnchor: Alignment.centerRight,
//                     followerAnchor: Alignment.centerLeft,
//                     child: FadeTransition(
//                       opacity: animation,
//                       child: Card(
//                         margin: const EdgeInsets.only(left: 10),
//                         child: Padding(
//                           padding: const EdgeInsets.all(5),
//                           child: Text(item.item2),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//                 items: [
//                   // You can also define and use your own container class
//                   // if you don't want to use the tuple package.
//                   Tuple3<IconData, String, LayerLink>(
//                     Icons.hub,
//                     'Hub',
//                     LayerLink(),
//                   ),
//                   Tuple3<IconData, String, LayerLink>(
//                     Icons.track_changes,
//                     'Track',
//                     LayerLink(),
//                   ),
//                   Tuple3<IconData, String, LayerLink>(
//                     Icons.ice_skating_outlined,
//                     'Ice',
//                     LayerLink(),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
