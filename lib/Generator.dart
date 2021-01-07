import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app/Taker.dart';
import 'package:flutter_app/engine.dart';
import 'package:google_fonts/google_fonts.dart';

class Generator extends StatefulWidget {
  @override
  _GeneratorState createState() => _GeneratorState();
}

class _GeneratorState extends State<Generator> {
  Engine eng = new Engine();
  Taker tak= new Taker();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('lib/rena.jpg'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 32,
          backgroundColor: Colors.transparent,
          title: Text('PASSWORD GENERATOR'),
          toolbarHeight: 43,
        ),
        body: Stack(
          children: [
            Positioned(
              left: 299,
              height: 75,
              width: 63,
              bottom: 620,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: eng.randomColors(), width: .5),
                    borderRadius: BorderRadius.all(Radius.circular(90)),
                    color: Colors.transparent),
                child: RaisedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Generator');
                      //Navigator.pushNamed(context, '/Generator');
                    },
                    icon: Icon(
                      Icons.refresh,
                      color: Colors.redAccent,
                      size: 26,
                    ),
                    label: Text(''),
                    color: Colors.transparent,
                    splashColor: Colors.white,
                    disabledColor: Colors.transparent),
              ),
            ),
            Positioned(
                left: 85,
                bottom: 444,
                child: Container(
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: eng.randomColors(), width: 1.4),
                        color: Colors.white))),
            Positioned(
                top: 12,
                left: 135,
                child: Container(
                  child: Center(
                      child: Text(
                    "SECONDS",
                    style: TextStyle(),
                  )),
                  decoration: BoxDecoration(
                      border: Border.all(color: eng.randomColors(), width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.greenAccent),
                  height: 33,
                  width: 100,
                )),
            Positioned(
                height: 70,
                width: 340,
                top: 450,
                right: -1,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    child: Center(
                        child: Text('CONTAINER 3',
                            style: GoogleFonts.aclonica(
                                fontSize: 33,
                                color: eng.randomColors(),
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle
                                    .italic))), //TextStyle(fontSize: 33,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,color: eng.randomColors()),)),
                    height: 33, width: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: eng.randomColors(),
                        border:
                            Border.all(color: eng.randomColors(), width: 1.5)),
                  ),
                )),
            Positioned(
                height: 59,
                width: 340,
                top: 378,
                right: 35.1,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    child: Center(
                        child: Text(
                      'CONTAINER 2',
                      style: GoogleFonts.aclonica(
                          fontSize: 33,
                          color: eng.randomColors(),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle
                              .italic),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: eng.randomColors(),
                        border:
                            Border.all(color: eng.randomColors(), width: 1.8)),
                    height: 34,
                  ),
                )),
            Positioned(
                height: 59,
                width: 340,
                top: 288,
                right: -1,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    child: Center(
                        child: Text(
                      '${eng.buidUpPermu("${'teou'}").toString().replaceAll(',', '').replaceAll('[', '').replaceAll(']', '')+" "+eng.symbPicker()}',
                      style: GoogleFonts.aclonica(
                          fontSize: 33,
                          color: eng.randomColors(),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle
                              .italic),
                    )),
                    decoration: BoxDecoration(
                        color: eng.randomColors(),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border:
                            Border.all(color: eng.randomColors(), width: 1.7)),
                    height: 33,
                  ),
                )),
            Positioned(
                height: 59,
                width: 340,
                top: 540,
                right: 35.1,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    child: Center(
                        child: Text(
                      'CONTAINER 4',
                      style: GoogleFonts.aclonica(
                          fontSize: 33,
                          color: eng.randomColors(),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle
                              .italic),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: eng.randomColors(),
                        border: Border.all(color: eng.randomColors())),
                    height: 33,
                  ),
                )),
            Positioned(
                height: 59,
                width: 340,
                top: 620,
                right: -1,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    child: Center(
                        child: Center(
                            child: Text(
                      'CONTAINER 5',
                      style: GoogleFonts.aclonica(
                          fontSize: 33,color: eng.randomColors(),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle
                              .italic),
                    ))),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border:
                            Border.all(color: eng.randomColors(), width: 1.7),
                        color: eng.randomColors()),
                    height: 33,
                  ),
                )),
            Container(),
          ],
        ),
      ),
    );
  }
}
