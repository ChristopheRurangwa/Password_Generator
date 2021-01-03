import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Engine extends StatefulWidget {

  int pos = 0;

  List colors = [
    Colors.white,
    Colors.cyan[50],
    Colors.cyan,
    Colors.blue,
    Colors.pink,
    Colors.lightGreen,
    Colors.deepPurpleAccent,
    Colors.yellow,
    Colors.black12,
    Colors.transparent,
    Colors.brown,
    Colors.blueGrey,
    Colors.black,
    Colors.white60,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.brown,
    Colors.purple,
    Colors.orange,
    Colors.indigo,
    Colors.teal,
    Colors.lime,
    Colors.transparent
  ];
  Random ra= new Random();

  /**
   * The method picks random color in the list and display.
   */
  Color randomColors(){

      pos = ra.nextInt(25);
    return colors[pos];

  }

  @override
  _EngineState createState() => _EngineState();
}

class _EngineState extends State<Engine> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
