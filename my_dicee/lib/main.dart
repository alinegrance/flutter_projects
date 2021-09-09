import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          title: Center(child: Text('My Dice')),
          backgroundColor: Colors.green[400],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePageStateless extends StatelessWidget {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;

    print('$leftDiceNumber, $rightDiceNumber');
  }

  @override
  Widget build(BuildContext context) {
    print('DicePageStateless called build()');

    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: changeDiceFace,
            child: Image.asset('images/dice$leftDiceNumber.png'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: changeDiceFace,
            child: Image.asset('images/dice$rightDiceNumber.png'),
          ),
        ),
      ]),
    );
  }
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: changeDiceFace,
            child: Image.asset('images/dice$leftDiceNumber.png'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                rightDiceNumber = Random().nextInt(6) + 1;
                leftDiceNumber = Random().nextInt(6) + 1;
              });
            },
            child: Image.asset('images/dice$rightDiceNumber.png'),
          ),
        ),
      ]),
    );
  }
}
