import 'dart:core';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trotter/trotter.dart';

class Engine extends StatefulWidget {

  List permuLst = [];
  List buidUpPermu(String src) {


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
  List passwrd=['MODE','PAR','ROBO','Rogue1','MrKegny334','hopeGrams4','brownAnita349','yellowLitter349034','HalloTRKI',
    'redsXOP','UYOW#','jumlpUpANDdown','greenlWENF','YELLOWSPRINDFSFDF','zero&*&',"DKJ86JHDFJH",'MY name is the dk637#','greeenf 5k4','tewoow+jdfk','userTERDF','<DJKKFKDF>yougabetreri','87tewojkf#'
        'the blackhole##%','the yelllowhole','the gdreen hole','hole2343','holeYELLOW','BIERSD','sidebyside','youverlkj','laketanganyika','ungwaro46','cyclethebeginingofanother','one23939'
        'rEASDytl343','proAGILE32','rEAgean32','IamTHeKing32767890','2834732','yourews23','45TRRIVIA12',
    'LoganWIZ12358','DAKAE431','HAPPYmIND782','iPALEwrr237894','otop3409','zero6754','HEART908','gREEN6','TWENTY213','Prety342','45tyewk','poly8fkj87'];

  String pword () {

    pos = ra.nextInt(50);

    for(int i=0;i<=passwrd.length;i++){

      if((passwrd[i].toString().length-1)<=4 ){

        if((passwrd[pos].toString().length-1)<=4)
          return buidUpPermu(passwrd[i].toString()).toString().replaceAll(',', '').replaceAll(']', '').replaceAll('[', '');
      }
      return passwrd[pos].toString();

    }


    return passwrd[pos].toString();
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
