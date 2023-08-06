import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    const MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text("Ask Me Anything"),
      ),
      body: Container(
        child: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          ballNumber = Random().nextInt(5);
          print("ballNumber is: $ballNumber");
        },
        child: Image.asset("Assets/images/8balls/ball$ballNumber.png"),
      ),
    );
  }
}
