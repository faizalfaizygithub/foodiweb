import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_web/Screens/constant.dart';
import 'package:food_web/components/defaultButton.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return const DesktopAppBar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return const DesktopAppBar();
      } else {
        return const MobileAppBar();
      }
    });
  }
}

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      constraints: const BoxConstraints(maxWidth: 1200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/logo.jpg',
            height: 50,
            alignment: Alignment.topCenter,
          ),
          const SizedBox(
            width: 2,
          ),
          Text(
            'Foodi'.toUpperCase(),
            style: const TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
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
        ],
      ),
    );
  }
}

class MenuItems extends StatelessWidget {
  final String title;
  final Function() press;
  const MenuItems({
    super.key,
    required this.title,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: const TextStyle(
              color: Colors.white70, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        child: Row(children: [
          Image.asset(
            'assets/images/logo.jpg',
            height: 50,
            alignment: Alignment.topCenter,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'Foodi'.toUpperCase(),
            style: const TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              Container(
                color: Colors.grey,
                height: double.infinity,
                width: 500,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
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
                  ],
                ),
              );
            },
          ),
        ]));
  }
}
