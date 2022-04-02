import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play(int c) {
    final player = AudioCache();

    // call this method when desired
    player.play('note$c.wav');
  }

  Expanded buildapp({Color color, int c}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          play(c);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
              child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildapp(color: Colors.red, c: 1),
                buildapp(color: Colors.deepOrange, c: 2),
                buildapp(color: Colors.yellow, c: 3),
                buildapp(color: Colors.green, c: 4),
                buildapp(color: Colors.teal.shade600, c: 5),
                buildapp(color: Colors.blue, c: 6),
                buildapp(color: Colors.purple, c: 7),
                buildapp(color: Colors.pink, c: 8),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
