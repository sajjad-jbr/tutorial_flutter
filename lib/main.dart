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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center, // in column x axis => start, center, end, ...
            verticalDirection: VerticalDirection.down, // up ,default down
            mainAxisAlignment: MainAxisAlignment.start, // in column y axis => center, end, start, spaceBetween, spaceAround, spaceEvenly
            children: <Widget>[
              Container(
                color: Colors.blue[100],
                width: 100,
                height: 100,
                child: const Text("Container 1"),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.amberAccent[100],
                width: 150,
                height: 100,
                child: const Text("Container 2"),
              ),
              Container(
                color: Colors.deepPurple[100],
                width: 200,
                height: 100,
                child: const Text("Container 3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
