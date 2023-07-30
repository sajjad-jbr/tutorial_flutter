import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
            color: Colors.blue[100],
            width: 200,
            height: 100,
            // padding: EdgeInsets.all(10),
            // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            padding: const EdgeInsets.fromLTRB(30, 10, 5, 15),
            // margin: EdgeInsets.all(10),
            // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            margin: const EdgeInsets.fromLTRB(30, 10, 5, 15),
            child: const Text("This is a Container"),
          ),
        ),
      ),
    );
  }
}
