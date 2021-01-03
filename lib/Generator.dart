import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app/engine.dart';

class Generator extends StatefulWidget {
  @override
  _GeneratorState createState() => _GeneratorState();

}

class _GeneratorState extends State<Generator> {
  Engine eng=new Engine();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,
    appBar: AppBar(

      elevation: 32,

      title: Text('PASSWORD GENERATOR'),toolbarHeight: 43,),

      body: Stack(

        children: [

          Positioned(
              left: 85,
              bottom: 444,
              child: Container(height: 250,width: 200,decoration:
              BoxDecoration(border:Border.all(color:eng.randomColors(),width: 1.4),color: Colors.white ))),

          Positioned(

            top: 12,
              left: 135,

              child: Container(
                child: Center(child: Text("SECONDS",style: TextStyle(),)),
                decoration:
                BoxDecoration(border: Border.all(color: eng.randomColors(),width: 1.5),
                    borderRadius:BorderRadius.all(Radius.circular(10)),
                    color: Colors.greenAccent ),


                height: 33,width: 100,)),

         Positioned(
             height: 70,
             width: 340,
             top: 450,
             right: -1,

             child: Padding(
               padding: const EdgeInsets.all(4.0),
               child: Container(child: Center(child: Text('CONTAINER 3',
                 style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,color: eng.randomColors()),)),
                 height: 33,width: 44,
                 decoration:
                 BoxDecoration(

                     borderRadius:BorderRadius.all(Radius.circular(10)),color:eng.randomColors(),
                     border: Border.all(color: eng.randomColors(),width: 1.5) ),

               ),
             )
         ),
         Positioned(

             height: 59,
             width: 340,
             top: 378,
            right: 35.1,

             child: Padding(
               padding: const EdgeInsets.all(2.0),
               child: Container(child: Center(child: Text('CONTAINER 2',style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic, color: eng.randomColors()),)),
                 decoration:
               BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(10)),color: eng.randomColors(),border: Border.all(color: eng.randomColors(),width: 1.8))
                 ,height: 34,),
             )),
          Positioned(

              height: 59,
              width: 340,
              top: 288,
              right: -1,

              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(child: Center(child: Text('CONTAINER 1',style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,color:eng.randomColors()),)),
                  decoration:
                BoxDecoration(color: eng.randomColors(),
                    borderRadius:BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: eng.randomColors(),width: 1.7) ),
                  height: 33,),
              )),
          Positioned(

              height: 59,
              width: 340,
              top: 540,
              right: 35.1,

              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  child: Center(child: Text('CONTAINER 4',style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic, color: eng.randomColors()),)),
                  decoration:
                BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(10)),color:eng.randomColors(),border: Border.all(color: eng.randomColors()) ),
                  height: 33,),
              )),
          Positioned(

              height: 59,
              width: 340,
              top: 620,
              right: -1,

              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(child:Center(child: Center(child: Text('CONTAINER 5',style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: eng.randomColors()),))),
                  decoration:
                BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(10)),border: Border.all(color: eng.randomColors(),width: 1.7),color: eng.randomColors() ),
                  height: 33,),
              )),

          Container(),


        ],
      ),

    );
  }
}
