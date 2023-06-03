import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'BottomNavBar.dart';
import 'package:provider/provider.dart';
import 'Provider/settings_provider.dart';
import 'View/CreateALiveStream/createStream_view.dart';
import 'View/DashBoard/dashBoard_view.dart';
import 'View/Drawer/Drawer_view.dart';
import 'View/Login/login_View.dart';
import 'View/Profile/profile_view.dart';
import 'View/Settings/settings_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 713),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => SettingsProvider()),
            ],
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: const SettingsView(),
            ));
      },
    );
  }
}
