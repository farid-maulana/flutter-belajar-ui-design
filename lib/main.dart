import 'dart:ui';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Container")),
        body: Container(
          height: 300,
          width: 300,
          margin: const EdgeInsets.all(50),
          padding: EdgeInsets.only(top: 10),
          // color: Colors.greenAccent,
          alignment: Alignment.topCenter,
          child: RaisedButton(
            padding: EdgeInsets.only(left: 20, right: 20),
            textColor: Colors.white,
            onPressed: () {},
            color: Colors.red[900],
            child: Text(
              "Button",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage('https://pixnio.com/free-images/2017/03/07/2017-03-07-10-59-39-900x600.jpg'),
              fit: BoxFit.fitWidth,
            ),
            border: Border.all( // Memberikan border
              color: Colors.black,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(12) // Membuat lengkungan pada sudut
          ),
          transform: Matrix4.rotationZ(-0.1), // Memiringkan container
        ),
      ),
    );
  }
}
