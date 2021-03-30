import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        margin: EdgeInsets.only(top: 30),
        color: Colors.white,
        child: Column(
          children: <Widget>[            
            AppBar(title: Text('Contoh Cupertino')),
            CupertinoButton(
              child: Text("Contoh Button"),
              onPressed: () {},
              color: Colors.green, // Mengatur warna button
              padding: EdgeInsets.all(20), // Mengatur padding button
            ),
            CupertinoActivityIndicator(),
          ],
        ),
      ),
    );
  }
}
