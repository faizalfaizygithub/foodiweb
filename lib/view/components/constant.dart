import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xffffc200);
const kTextColor = Color(0xff241424);
const kDarkButton = Color(0xff372930);

var body = Container(
  decoration: const BoxDecoration(
    image: DecorationImage(
        image: AssetImage('assets/images/bgr2.jpg'), fit: BoxFit.cover),
  ),
  child: Column(children: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: Text('Burger'.toUpperCase(),
          style: const TextStyle(
              fontSize: 80, fontWeight: FontWeight.bold, color: Colors.white)),
    ),
    const Text(
      'It’s just a piece of meat between buns and other stuff, but it makes a lot of people happy.',
      style: TextStyle(
        fontSize: 21,
        color: Color.fromARGB(153, 243, 238, 238),
      ),
    ),
    const SizedBox(
      height: 10,
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
