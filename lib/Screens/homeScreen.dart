import 'package:flutter/material.dart';
import 'package:food_web/components/appBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bgr.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [CustomAppBar()],
        ),
      ),
    );
  }
}
