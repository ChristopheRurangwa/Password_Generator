import 'dart:math';

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

  Generator gene = Generator();

  @override
  Widget build(BuildContext context) {
    int pos = 0;
    Random ra = new Random();

    List passwrd2 = [
      'uneligne123',
      'larger',
      'classifieds',
      'threeejdfj',
      'Throwesojf',
      'coninaqoir12'
    ];

    List passwrd = [
      'MODE',
      'PAR',
      'ROBO',
      'Rogue1',
      'MrKegny334',
      'hopeGrams4',
      'brownAnita349',
      'yellowLitter349034',
      'HalloTRKI',
      'redsXOP',
      'UYOW#',
      'jumlpUpANDdown',
      'greenlWENF',
      'YELLOWSPRINDFSFDF',
      'zero&*&',
      "DKJ86JHDFJH",
      'MY name is the dk637#',
      'greeenf 5k4',
      'tewoow+jdfk',
      'userTERDF',
      '<DJKKFKDF>yougabetreri',
      '87tewojkf#'
          'the blackhole##%',
      'the yelllowhole',
      'the gdreen hole',
      'hole2343',
      'holeYELLOW',
      'BIERSD',
      'sidebyside',
      'youverlkj',
      'laketanganyika',
      'ungwaro46',
      'cyclethebeginingofanother',
      'one23939'
          'rEASDytl343',
      'proAGILE32',
      'rEAgean32',
      'IamTHeKing32767890',
      '2834732',
      'yourews23',
      '45TRRIVIA12',
      'LoganWIZ12358',
      'DAKAE431',
      'HAPPYmIND782',
      'iPALEwrr237894',
      'otop3409',
      'zero6754',
      'HEART908',
      'gREEN6',
      'TWENTY213',
      'Prety342',
      '45tyewk',
      'poly8fkj87'
    ];

    final stopwatch = new Stopwatch()..start();
    // returns duration it took to run through passwrd2
    timeElapsed() {
      for (int i = 0; i < passwrd2.length; i++) {
        return stopwatch.elapsed;
      }
    }

    /**
     * find the permutation and also picks random password from the list of strings
     */
    String phrase() {
      pos = ra.nextInt(50);

      for (int i = 0; i <= passwrd.length; i++) {
        if ((passwrd[i].toString().length - 1) <= 4) {
          if ((passwrd[pos].toString().length - 1) <= 4)
            return eng
                .buidUpPermu(passwrd[i].toString())
                .toString()
                .replaceAll(',', '')
                .replaceAll(']', '')
                .replaceAll('[', '');
        }
        return passwrd[pos].toString();
      }

      return passwrd[pos].toString();
    }

    Color colorList() {
      pos = ra.nextInt(12);
      List col = [
        Colors.cyan,
        Colors.cyan[50],
        Colors.teal,
        Colors.tealAccent,
        Colors.teal[50],
        Colors.yellowAccent,
        Colors.white70,
        Colors.greenAccent,
        Colors.blueAccent,
        Colors.blueGrey,
        Colors.yellowAccent,
        Colors.transparent
      ];

      return col[pos];
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(eng.imagesList()),
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

                /// the top list
                left: 85,
                bottom: 530,
                child: Container(
                    child: Container(
                      child: ListView(
                        children: [
                          for (var item in passwrd) Center(child: Text(item)),
                          SizedBox(
                            height: 7,
                          ),
                          for (var item2 in passwrd2)
                            Center(child: Text(item2)),
                        ],
                      ),
                    ),
                    height: 234, //////////////////////////
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border:
                            Border.all(color: eng.randomColors(), width: 1.4),
                        color: colorList()))),
            Positioned(
                top: 12,
                left: 115,
                child: Center(
                  child: Container(
                    /////////////////________________
                    child: Center(
                        child: Text(
                      '${timeElapsed()} secs',
                      style: TextStyle(),
                    )),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: eng.randomColors(), width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: colorList()),
                    height: 33,
                    width: 150,
                  ),
                )),
            Positioned(
                height: 70,
                width: 340,
                top: 450,
                left: 3,
                //right: -1,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    child: Center(
                        child: Text('${phrase() + " " + eng.symbPicker()}',
                            style: GoogleFonts.aclonica(
                                fontSize: 27,
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
                height: 69,
                width: 340,
                top: 378,
                right: -1,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    //second container
                    child: Center(
                        child: Text(
                      '${phrase() + " " + eng.symbPicker()}',
                      style: GoogleFonts.aclonica(
                          fontSize: 27,
                          color: eng.randomColors(),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
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
                height: 69,
                width: 340,
                top: 288,
                right: 67,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    // first container
                    child: Center(
                        child: Text(
                      '${phrase() + " " + eng.symbPicker()}',
                      style: GoogleFonts.aclonica(
                          fontSize: 27,
                          color: eng.randomColors(),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
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
                height: 70,
                width: 340,
                top: 540,
                right: 2.1,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    child: Center(
                        child: Text(
                      '${phrase() + " " + eng.symbPicker()} ',
                      style: GoogleFonts.aclonica(
                          fontSize: 27,
                          color: eng.randomColors(),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: eng.randomColors(),
                        border: Border.all(color: eng.randomColors())),
                    height: 33,
                  ),
                )),
            Positioned(
                height: 69,
                width: 340,
                top: 620,
                right: 67,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    child: Center(
                        child: Center(
                            child: Text(
                      '${phrase() + " " + eng.symbPicker()}', //last container
                      style: GoogleFonts.aclonica(
                          fontSize: 27,
                          color: eng.randomColors(),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
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
