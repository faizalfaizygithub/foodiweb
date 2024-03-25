import 'package:flutter/material.dart';
import 'package:food_web/view/components/constant.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Foodi'.toUpperCase(),
          style: const TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: Image.asset(
          'assets/images/logo.jpg',
          height: 50,
          alignment: Alignment.topCenter,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: body,
    );
  }
}
