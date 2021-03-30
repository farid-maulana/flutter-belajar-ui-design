import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text(
        'This is Text Widget',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 28,
          fontWeight: FontWeight.normal,
          fontFamily: 'Times New Roman',
          decoration: TextDecoration.none,
          backgroundColor: Colors.red,
        ),),
    );
  }
}