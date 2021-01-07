import 'dart:core';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trotter/trotter.dart';

class Engine extends StatefulWidget {


  List buidUpPermu(String src) {
    List permuLst = [];

    final boxOfItems=characters(src),permut=Permutations(4, boxOfItems);
    for(final permut in permut()){

      permuLst.add(permut);

    }

  return permuLst[4];
  }





  String words(String word) {

    pos = ra.nextInt(25);
    return"" ;
  }


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

  List symb = [
    '!',
    '@',
    '~',
    '#',
    '%',
    '^',
    '&',
    '*',
    '-',
    '/',
    '?',
    '_',
    '>',
    '<',
    ']',
    '[',
    '{',
    '}',
    '|'
  ];

  Random ra = new Random();

  /**
   * The method picks random color in the list and display.
   */
  Color randomColors() {
    pos = ra.nextInt(25);
    return colors[pos];
  }

  /**
   * picks a random sign in the list
   */

 String symbPicker(){
   pos = ra.nextInt(19);
    return symb[pos];
  }




  String centerCoreWord(String password) {

    for(int i=0;i<password.length;i++){
      

    }


    return password;
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
