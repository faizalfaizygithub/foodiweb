import 'package:flutter/material.dart';
import 'package:food_web/view/Screens/ResponsiveLayout/desktop_layout.dart';
import 'package:food_web/view/Screens/ResponsiveLayout/mobile_layout.dart';
import 'package:food_web/view/Screens/ResponsiveLayout/responsive_layout.dart';
import 'package:food_web/view/components/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter web',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const ResponsiveLayout(
            mobileLayout: MobileLayout(), desktopLayout: DesktopLayout()));
  }
}
