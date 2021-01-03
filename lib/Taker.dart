import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Taker extends StatefulWidget {
  @override
  _TakerState createState() => _TakerState();
}

class _TakerState extends State<Taker> {
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
          title: Text('ENTER PASSWORD'),
          backgroundColor: Colors.black38,
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            TextField(
              onChanged: (text) {},
              style: TextStyle(color: Colors.green, fontSize: 29),
              cursorColor: Colors.green,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.clear_all,
                  color: Colors.white70,
                ),
                border: OutlineInputBorder(),
                labelText: 'PASSWORD',
                hintText: 'Password',
                labelStyle: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
            SizedBox(
              height: 42,
            ),
            RaisedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/Generator');
                  //Navigator.pushNamed(context, '/Generator');
                },
                icon: Icon(Icons.present_to_all),
                label: Text('SUBMIT'),
                color: Colors.white60,
                splashColor: Colors.greenAccent,
                disabledColor: Colors.white60),
          ],
        ),
      ),
    );
  }
}
