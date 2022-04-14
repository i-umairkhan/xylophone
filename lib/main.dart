import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  XylophoneApp({Key? key}) : super(key: key);
  final palyer = AudioCache();
  void playSound(int soundNumber) {
    palyer.play('note$soundNumber.wav');
  }

  Expanded buildkey({Color color = Colors.red, int soundNumber = 1}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(backgroundColor: color),
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
              buildkey(color: Colors.red, soundNumber: 1),
              buildkey(color: Colors.orange, soundNumber: 2),
              buildkey(color: Colors.yellow, soundNumber: 3),
              buildkey(color: Colors.green, soundNumber: 4),
              buildkey(color: Colors.teal, soundNumber: 5),
              buildkey(color: Colors.blue, soundNumber: 6),
              buildkey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
