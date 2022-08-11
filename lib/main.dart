import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(
      {required int soundNumber,
      required Color color,
      required String keyName}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(
          keyName,
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(soundNumber: 1, color: Colors.red, keyName: '도'),
              buildKey(soundNumber: 2, color: Colors.orange, keyName: '레'),
              buildKey(soundNumber: 3, color: Colors.yellow, keyName: '미'),
              buildKey(soundNumber: 4, color: Colors.green, keyName: '파'),
              buildKey(soundNumber: 5, color: Colors.teal, keyName: '솔'),
              buildKey(soundNumber: 6, color: Colors.blue, keyName: '라'),
              buildKey(soundNumber: 7, color: Colors.purple, keyName: '시'),
            ],
          ),
        ),
      ),
    );
  }
}
