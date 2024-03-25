import 'package:flutter/material.dart';
import 'package:food_web/view/components/constant.dart';
import 'package:food_web/view/components/menu_item.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: body)
          ],
        ),
      ),
      endDrawer: Container(
        height: 300,
        child: Drawer(
          backgroundColor: Colors.white60,
          width: 200,
          child: _drawerList(context),
        ),
      ),
    );
  }
}

_drawerList(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      MenuItems(
        title: 'Home',
        press: () {
          Navigator.pop(context);
        },
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
    ],
  );
}
