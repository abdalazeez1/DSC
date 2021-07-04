import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen1 extends StatefulWidget {
  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  Timer(Duration(seconds: 2), (){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SplashScreen2()));
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('images/Task8/1.png',fit: BoxFit.cover,),
      )
    );
  }
}


class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: Task8(),
      duration: 5000,
      imageSize: 130,
      imageSrc: "images/Task8/2.jpeg",
      text: "Splash Screen",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.white,
    );
  }
}

class Task8 extends StatefulWidget {
  @override
  _Task8State createState() => _Task8State();
}

class _Task8State extends State<Task8> {
  TextStyle style =TextStyle(fontSize: 20,color: Colors.indigo,fontWeight: FontWeight.w600);
  DateTime date;
  TimeOfDay time;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Clock'),
        centerTitle: true,
        backgroundColor: Colors.indigo[400  ],
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color: Colors.white70,
child:Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(date==null?'':'Date',style: style,),
    Text(date==null?'':'${date.year} : ${date.month} : ${date.day}',style: style,),
    SizedBox(height: 10,),
    Text(time==null?'':'Time',style: style,),
    Text(time==null?'':'${time.hour} : ${time.minute} ${time.period==DayPeriod.am?'Am':'Pm'}',style:style,),
    SizedBox(height: 30,),
    ElevatedButton(
      onPressed: fn,
      child: Text(' chose time and date ',style: style,),

    )
  ],
),
        ),
      ),
    );
  }
  void fn()async{
    date=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000,1,1), lastDate: DateTime.now());
    time =await showTimePicker(context: context, initialTime:TimeOfDay.now(), );

    setState(() {
      date =date;
      time=time;
});
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.indigo,
        behavior: SnackBarBehavior.floating,

        content: Row(children: [
      Icon(Icons.timer),SizedBox(width: 5,),Text('${time.hour} : ${time.minute} ${time.period==DayPeriod.am?'Am':'Pm'}'),
      Spacer(),Icon(Icons.date_range),SizedBox(width: 5,),Text('${date.year} : ${date.month} : ${date.day}')
    ],)));
  }
}
