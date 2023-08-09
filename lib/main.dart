import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    var btnColor = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.green[900],
      Colors.blue,
      Colors.purple
    ];
    void handleSound(i) {
      final player = AudioPlayer();
      int j = i + 1;
      player.play(AssetSource("zylophoneSounds/note$j.wav"));
    }
    List<Widget> createButton() {
      List<Widget> res = [];
      for (int i = 0; i < btnColor.length; i++) {
        res.add(
          Expanded(
            child: Container(
              color: btnColor[i],
              child: TextButton(
                onPressed: () {
                  handleSound(i);
                },
                child: const Text(""),
              ),
            ),
          ),
        );
      }
      return res;
    }

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: createButton(),
          ),
        ),
      ),
    );
  }
}
