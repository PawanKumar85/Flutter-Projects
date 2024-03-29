import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text(
          "Dice App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: const MyDice(),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyDice extends StatefulWidget {
  const MyDice({super.key});

  @override
  State<MyDice> createState() => _MyDiceState();
}

class _MyDiceState extends State<MyDice> {
  int getRandomNumber() {
    final result = Random();
    return result.nextInt(6) + 1;
  }

  void changeDiceFace() {
    setState(() {
      leftButton = getRandomNumber();
      rightButton = getRandomNumber();
    });
  }

  int leftButton = 1;
  int rightButton = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Image(
                  image: AssetImage("assets/images/dice$leftButton.png"),
                ),
                onTap: () {
                  changeDiceFace();
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Image(
                  image: AssetImage("assets/images/dice$rightButton.png"),
                ),
                onTap: () {
                  changeDiceFace();
                },
              ),
            ),
          ),
          ],
      ),
    );
  }
}
