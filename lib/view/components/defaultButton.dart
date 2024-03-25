import 'package:flutter/material.dart';

import 'constant.dart';

class DefaultaButton extends StatelessWidget {
  final String text;
  final Function() press;
  const DefaultaButton({
    super.key,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: OutlinedButton(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size(100, 50)),
            side: MaterialStateProperty.all(
                BorderSide(color: Colors.white70, width: 1)),
            padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
            backgroundColor: MaterialStateProperty.all(kPrimaryColor),
          ),
          onPressed: press,
          child: Text(
            text.toUpperCase(),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
