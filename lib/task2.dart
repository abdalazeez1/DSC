import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Color(0XFF8DBDC5),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(8),

          children: [
            widg(color: Color(0XFF369E2D),),
            widg(color: Color(0XFF32A0D9),),
            widg(color: Color(0XFFC64422),),
            widg(color: Color(0XFFD8C21E),),
            widg(color: Color(0XFFC48422),),
            widg(color: Color(0XFF9A5E2A),),

          ],
        ),
      ),
    );
  }
}

class widg extends StatelessWidget {

final Color color;
  widg({this.color,});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
          height:  size.height / 4.5,
          width: size.width / 2 - 50,
          color: color,

        ),
        SizedBox(
          height: (size.height/5)/40,
        ),
        Divider(
          color: Colors.grey,
          height: 20,
          thickness: 10,
          endIndent: 30,
          indent: 30,

        )
      ],
    );
  }
}


