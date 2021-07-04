import 'package:flutter/material.dart';
import 'dart:math';
class Task3 extends StatefulWidget {
  @override
  _Task3State createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  var counter=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap:(){
          setState(() {

            counter=Random().nextInt(5)+1;
          });
        } ,
        child: Container(
          alignment: Alignment.center,
          child:Image.asset('images/$counter.png',
            fit: BoxFit.fitWidth,),
        ),
      )
    ));
  }
}
