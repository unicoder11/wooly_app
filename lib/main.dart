import 'package:flutter/material.dart';
import 'login.dart';
import 'dart:ui';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wooly App',
      //theme: kThemeData,
      home: Login(),
    );
  }
}



