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
      leading: const Center(child: Text('sajjad')),
      actions: [
        TextButton(onPressed: onPressed, child: const Text("click me")),
        TextButton(onPressed: onPressed, child: const Text("click me"))
      ],
    ),
    body: const Center(
      child: Image(image: AssetImage('images/ddd.jpg'))
    ),
  )));
}
