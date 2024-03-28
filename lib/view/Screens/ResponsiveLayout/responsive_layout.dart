import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget desktopLayout;
  final Widget tablayout;
  const ResponsiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.desktopLayout,
      required this.tablayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileLayout;
      } else if (constraints.maxWidth < 1100) {
        return tablayout;
      } else {
        return desktopLayout;
      }
    });
  }
}
