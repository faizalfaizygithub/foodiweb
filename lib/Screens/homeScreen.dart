import 'package:flutter/material.dart';
import 'package:food_web/components/appBar.dart';
import 'package:food_web/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bgr2.jpg'), fit: BoxFit.cover),
        ),
        child: const Column(
          children: [
            CustomAppBar(),
            Spacer(
              flex: 2,
            ),
            Body(),
          ],
        ),
      ),
    );
  }
}
