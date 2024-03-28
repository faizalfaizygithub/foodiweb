import 'package:flutter/material.dart';
import 'package:food_web/view/Screens/ResponsiveLayout/desktop_layout.dart';
import 'package:food_web/view/Screens/ResponsiveLayout/mobile_layout.dart';
import 'package:food_web/view/Screens/ResponsiveLayout/responsive_layout.dart';
import 'package:food_web/view/Screens/ResponsiveLayout/tab_layout.dart';
import 'package:food_web/view/components/constant.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter web',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const ResponsiveLayout(
            mobileLayout: MobileLayout(),
            tablayout: TabLayout(),
            desktopLayout: DesktopLayout()));
  }
}
