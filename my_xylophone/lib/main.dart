import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
  XylophoneApp(),
);

class XylophoneApp extends StatefulWidget {

  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  static AudioCache player = AudioCache();

  Widget tile(Color color, int note) {
    return Expanded(
      child: Container(
        child: TextButton(
          onPressed: (){
            player.play('note$note.wav');
          }, child: Text(''),
        ),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              tile(Colors.red, 1),
              tile(Colors.orange, 2),
              tile(Colors.yellow, 3),
              tile(Colors.green, 4),
              tile(Colors.lightBlue, 5),
              tile(Colors.blue.shade900, 6),
              tile(Colors.deepPurple, 7),
            ],
          ),
        ),
      ),
    );
  }
}

