import 'package:flutter/material.dart';

class Task5 extends StatefulWidget {
  @override
  _Task5State createState() => _Task5State();
}

class _Task5State extends State<Task5> {
  int  value=1;
  List<String> food=['chickens',"Hamburger",'pizza'];
  List<int> item=[1,2,3,4,5,6,7,8,9,10];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text('Restaurant Menu'),
      ),
      body:Container(
        color: Colors.white70,
        child:  ListView.builder(
          itemBuilder: (context, i) => ClipRRect(
            borderRadius: BorderRadius.circular(44),
            child: Padding(padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 4
            ),
            child: SizedBox(
              width: size.width,
              height: size.height / 3,
              child: Card(
                shadowColor: Colors.grey,
                elevation: 10.0,
                color: Colors.orange,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: ClipRRect(
                            child: SizedBox(
                              height: (size.height / 3) / 1.5,
                              width: size.width * 2 / 2.7,
                              child: Image.asset(
                                'images/task5/${i+1}.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
//                  clipBehavior: Clip.hardEdge,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(bottom: 16, left: 8),
                          child: Text(
                            food[i],
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                      child: DropdownButton<int>(
                          underline: Container(
                            height: 2,
                            color: Colors.indigo,
                          ),
                          onChanged: (val) {
                            setState(() {
                              value=val;
                            });
                          },
                          value:value ,
                          items:item.map<DropdownMenuItem<int>>((e) => DropdownMenuItem<int>(child: Text(e.toString()),value: e,)).toList()),
                    )
                  ],
                ),
              ),
            ),),
          ),
          itemCount: 3,
        ),
      ),
    );
  }
}
