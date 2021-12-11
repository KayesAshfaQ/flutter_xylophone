import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey({Color? color, int? soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber!);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.yellow, soundNumber: 1),
              buildKey(color: Colors.red, soundNumber: 2),
              buildKey(color: Colors.deepPurple, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.indigo, soundNumber: 6),
              buildKey(color: Colors.lightGreenAccent, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
