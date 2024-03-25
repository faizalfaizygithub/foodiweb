import 'package:flutter/material.dart';

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
