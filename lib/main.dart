import 'package:flutter/material.dart';

void main() {
  void onPressed() {
    print("pressed button");
  }

  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.blueGrey[900],
    appBar: AppBar(
      backgroundColor: Colors.blueGrey[900],
      title: const Text(
        "I am rich",
      ),
      leading: const Image(
        image: AssetImage('images/leadIcon.png'),
      ),
      actions: [
        TextButton(onPressed: onPressed, child: const Text("Menu 1")),
        TextButton(onPressed: onPressed, child: const Text("Menu 2"))
      ],
    ),
    body: const Center(child: Image(image: AssetImage('images/diamond.jpg'))),
  )));
}
