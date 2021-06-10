import 'package:flutter/material.dart';
import 'package:test1/screen1/ScreenOneMain.dart';
import 'package:test1/screen2/screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ScreenOneMain(),
    );
  }
}
