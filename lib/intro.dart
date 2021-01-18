import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'engine.dart';

class Intron extends StatefulWidget {
  @override
  _IntronState createState() => _IntronState();
}

class _IntronState extends State<Intron> {
  Engine eng = new Engine();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(eng.imagesList()),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Text(
                    'WELCOME  TO GenPassword',
                    style: TextStyle(fontSize: 27, color: Colors.indigoAccent),
                  ),
                )),
                width: 210,
                height: 199,
                color: Colors.transparent,
              ),
            ),
            Flexible(
                child: Container(
              width: 95,
              color: Colors.white,
            )),
            Flexible(
                child: Container(
              color: Colors.redAccent,
              width: 23,
            )),
            Flexible(
                child: Container(
              color: Colors.blue,
              width: 22,
            )),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Taker');
                    //Navigator.pushNamed(context, '/Generator');
                  },
                  icon: Icon(Icons.arrow_forward_ios),
                  label: Text('Continue'),
                  color: Colors.blue,
                  splashColor: Colors.greenAccent,
                  disabledColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
