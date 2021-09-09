import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue[300],
              title: Center(
                child: Text(
                    'Ask away',
                    style: TextStyle(
                      color: Colors.blue[900],
                    ),
                ),
              ),
            ),
            body: BallPage(),
          ),
        ),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
   int ballAnswer = 1;

  void changeBallAnswer() {
    setState(() {
      ballAnswer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      alignment: Alignment.center,
      child: TextButton(
        onPressed: changeBallAnswer,
        child: Image.asset('images/ball$ballAnswer.png'),
      ),
    );
  }
}
