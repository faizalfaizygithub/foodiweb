import 'package:flutter/material.dart';
import 'package:food_web/Screens/constant.dart';
import 'package:food_web/components/defaultButton.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(46),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 30,
              color: Colors.black.withOpacity(0.16),
            ),
          ]),
      child: Row(children: [
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
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
        )
      ]),
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
          style: TextStyle(
              color: kTextColor.withOpacity(0.3), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
