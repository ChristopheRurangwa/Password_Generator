import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Generator.dart';
import 'engine.dart';

class Taker extends StatefulWidget {
  String password;


  @override
  _TakerState createState() => _TakerState();
}

class _TakerState extends State<Taker> {



  Map map;


  Generator gene= Generator();
  Taker tak= new Taker();
  Engine eng = new Engine();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('lib/rena.jpg'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text('PASSWORD OF THE DAY',style: GoogleFonts.adamina(
              fontSize: 23,
              color: eng.randomColors(),
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle
                  .italic)),
          backgroundColor:Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: 200,
            ),
          Center(child: Container(///


            height: 152,
            width: 402,
            child: Center(child: Text('${eng.pword()}',style: GoogleFonts.aclonica(
                fontSize: 23,
                color: eng.randomColors(),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle
                    .italic)),),
            decoration: BoxDecoration(

                border: Border.all(color: eng.randomColors(), width: .5),
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: eng.randomColors()),
          )),

            SizedBox(
              height: 42,
            ),
            RaisedButton.icon(
                onPressed: () {

                  Navigator.pushNamed(context, '/Generator');


                  //Navigator.pushNamed(context, '/Generator');
                },
                icon: Icon(Icons.skip_next_outlined,size: 59,color: eng.randomColors(),),
                label: Text('Next'),
                color: Colors.white60,
                splashColor: Colors.greenAccent,
                disabledColor: Colors.white60),
          ],
        ),
      ),
    );
  }
}
