import 'package:flutter/material.dart';
import 'package:food_web/Screens/constant.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 40,
      top: 87,
      child: Column(children: [
        Text('Burger'.toUpperCase(),
            style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        const Text(
          'It’s just a piece of meat between buns and other stuff, but it makes a lot of people happy.',
          style: TextStyle(
            fontSize: 21,
            color: Color.fromARGB(153, 243, 238, 238),
          ),
        ),
        FittedBox(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(34),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 38,
                  width: 38,
                  decoration: const BoxDecoration(
                      color: kPrimaryColor, shape: BoxShape.circle),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Get Started'.toUpperCase(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
