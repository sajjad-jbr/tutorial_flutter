import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceWidget(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  // const DicePage({super.key});
  var left = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  left = left + 1;
                  print("sajjad: $left");
                },
                child: Image(
                  image: AssetImage('Assets/images/dicee/dice$left.png'),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  print("right");
                },
                child: const Image(
                  image: AssetImage('Assets/images/dicee/dice5.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DiceWidget extends StatefulWidget {
  const DiceWidget({super.key});

  @override
  State<DiceWidget> createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  int leftDice = Random().nextInt(6)+1;
  int rightDice = Random().nextInt(6)+1;
  void updateBothDice(){
    setState(() {
      leftDice = Random().nextInt(6)+1;
      rightDice = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: updateBothDice,
                child: Image(
                  image: AssetImage('Assets/images/dicee/dice$leftDice.png'),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: updateBothDice,
                child: Image(
                  image: AssetImage('Assets/images/dicee/dice$rightDice.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
