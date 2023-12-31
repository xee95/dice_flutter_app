import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 3;

  void changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  // Set the background color to transparent when pressed
                  backgroundColor: Colors.transparent,
                  primary: Colors.transparent, disabledForegroundColor: Colors.transparent.withOpacity(0.38),
                  // Set the splash color to transparent when pressed
                  splashFactory: NoSplash.splashFactory,
                ),
                onPressed: () {
                  setState(() {
                    changeDice();
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  // Set the background color to transparent when pressed
                  backgroundColor: Colors.transparent,
                  primary: Colors.transparent, disabledForegroundColor: Colors.transparent.withOpacity(0.38),
                  // Set the splash color to transparent when pressed
                  splashFactory: NoSplash.splashFactory,
                ),
                onPressed: () {
                  setState(() {
                    changeDice();
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
