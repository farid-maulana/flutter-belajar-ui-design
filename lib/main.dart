import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyLayout()),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: RaisedButton(
        child: Text(
          'Show alert',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: () {
          showAlertDialog(context);
        },
        color: Colors.blue,
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Buat button OK
  Widget okButton = FlatButton(
    onPressed: () {},
    child: Text('OK'),
  );

  Widget cancelButton = FlatButton(
    onPressed: () => Navigator.pop(context),
    child: Text('Cancel'),
  );

  // Setup alert dialog
  AlertDialog alertDialog = AlertDialog(
    title: Text("Ini adalah judul"),
    content: Text("Ini adalah isi pesan"),
    actions: [
      okButton,
      cancelButton
    ],
  );

  // Menampilkan alert dialog
  showDialog(
    context: context, 
    builder: (BuildContext context) {
      return alertDialog;
    }
  );
}
