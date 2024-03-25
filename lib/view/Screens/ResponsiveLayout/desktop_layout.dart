import 'package:flutter/material.dart';
import 'package:food_web/view/components/constant.dart';
import 'package:food_web/view/components/defaultButton.dart';
import 'package:food_web/view/components/menu_item.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/images/logo.jpg',
          height: 50,
          alignment: Alignment.topCenter,
        ),
        title: Text(
          'Foodi'.toUpperCase(),
          style: const TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          MenuItems(
            title: 'Home',
            press: () {},
          ),
          MenuItems(
            title: 'About',
            press: () {},
          ),
          MenuItems(
            title: 'Pricing',
            press: () {},
          ),
          MenuItems(
            title: 'contact',
            press: () {},
          ),
          MenuItems(
            title: 'login',
            press: () {},
          ),
          DefaultaButton(
            text: 'Get Started',
            press: () {},
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: body,
    );
  }
}
