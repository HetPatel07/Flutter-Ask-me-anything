import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int change = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    change = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$change.png'),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
