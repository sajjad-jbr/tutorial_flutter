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
            children: [
            Row(
              children: [Expanded(child: Container())],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center, // in row y axis => start, center, end, ...
              verticalDirection: VerticalDirection.down, // up ,default down
              mainAxisAlignment: MainAxisAlignment.center, // in row x axis => center, end, start, spaceBetween, spaceAround, spaceEvenly
              children: <Widget>[
                Container(
                  color: Colors.blue[100],
                  width: 100,
                  height: 100,
                  child: const Text("Container 1"),
                ),
                const SizedBox(
                  width: 20,
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
                Container(
                  height: MediaQuery.of(context).size.height,
                ),

              ],
            ),
          ],
        )),
      ),
    );
  }
}
