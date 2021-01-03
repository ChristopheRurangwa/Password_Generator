import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Intron extends StatefulWidget {
  @override
  _IntronState createState() => _IntronState();
}

class _IntronState extends State<Intron> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.greenAccent,
    body: Row(children: [

       Padding(
         padding: const EdgeInsets.all(1.0),
         child: Container(child: Center(child: Text('WELCOME to GenPassword',style: TextStyle(fontSize: 17,color: Colors.indigoAccent),)),width: 210,height: 199,color: Colors.white,),
       ),
       Flexible(child: Container(width:95,color: Colors.white,)),
      Flexible(child: Container(color: Colors.redAccent,width: 23,)),
      Flexible(child: Container(color: Colors.blue,width: 22,)),
      Padding(
        padding: const EdgeInsets.all(19.0),
        child: RaisedButton.icon(onPressed: (){
          Navigator.pushNamed(context, '/Generator');

        }, icon: Icon(Icons.arrow_forward_ios), label: Text('Continue'),
            color: Colors.blue,splashColor: Colors.greenAccent,disabledColor:Colors.blue),
      ),

    ],),
    );
  }
}
