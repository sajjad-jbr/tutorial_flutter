import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Center(
          child: Container(
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/profile.webp'),
                ),
                const Text(
                  "Angela",
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
                const Text(
                  "Flutter Developer",
                  style: TextStyle(
                      fontFamily: 'Oswald',
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      letterSpacing: 2),
                ),
                const SizedBox(
                  height: 20,
                  width: 150,
                  child: Divider(color: Colors.white,),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: const Icon(Icons.phone, color: Colors.teal),
                      title: Text(
                        "+98 913 123 4567",
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 20,
                          fontFamily: "Oswald",
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListTile(
                        leading: const Icon(Icons.email, color: Colors.teal),
                        title: Text(
                          "abc@email.com",
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontSize: 20,
                            fontFamily: "Oswald",
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

/*
Row(
children: <Widget>[
  const Icon(Icons.phone, color: Colors.teal),
  const SizedBox(
    width: 10,
  ),
  Text(
    "+98 913 123 4567",
    style: TextStyle(
      color: Colors.teal.shade900,
      fontSize: 20,
      fontFamily: "Oswald",
    ),
  )
],
),



Row(
children: <Widget>[
const Icon(Icons.email, color: Colors.teal),
const SizedBox(
width: 10,
),
Text(
"abc@email.com",
style: TextStyle(
color: Colors.teal.shade900,
fontSize: 20,
fontFamily: "Oswald",
),
)
],
),
*/
