import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: Text('I am rich'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Image.asset('assets/images/childerich.jpg'),
      ),
    ),
  ));
}
