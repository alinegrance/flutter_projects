import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[400],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/lineavatar.jpg'),
              ),
              Text(
                'Aline Grance',
                style: TextStyle(
                  fontFamily: 'Satisfy',
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'Future Flutter Developer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Satisfy',
                  color: Colors.green[800],
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 30.0,
                width: 100.0,
                child: Divider( color: Colors.green[100]),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.green[100],
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.green[900]),
                  title: Text(
                    '+55 51 981392096',
                    style: TextStyle(
                      fontFamily: 'Uchen',
                      color: Colors.green[900],
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.green[100],
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.green[900]),
                  title: Text(
                    'grance.aline@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Uchen',
                      color: Colors.green[900],
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
