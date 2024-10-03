import 'dart:math';

import 'package:flutter/material.dart';

class DiceContainer extends StatefulWidget {
  const DiceContainer({
    super.key,
  });

  @override
  State<DiceContainer> createState() => _DiceContainerState();
}

class _DiceContainerState extends State<DiceContainer> {
  @override
  void initState() {
    super.initState();
    randomGenerate();
  }

  var imageLink = 'assets/dices/1.png';
  var random = Random();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imageLink),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: () {
            randomGenerate();
          },
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(156, 255, 191, 0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              side: BorderSide(
                color: Colors.white,
                width: 2,
              ),
            ),
          ),
          child: const Text(
            "Roll Now",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(220, 0, 0, 0),
            ),
          ),
        ),
      ],
    );
  }

  void randomGenerate() {
    setState(() {
      var randomNumber = Random().nextInt(6) + 1;
      imageLink = 'assets/dices/$randomNumber.png';
    });
  }
}
