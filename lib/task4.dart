import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Task4 extends StatefulWidget {
  @override
  _Task4State createState() => _Task4State();
}

class _Task4State extends State<Task4> {
  List<Color> color =[Colors.indigo,Colors.deepOrangeAccent];
  int selectIndex=0;
  void change(var val){
    setState(() {
      selectIndex=val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bottom AppBAr with  FAB'),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        clipBehavior: Clip.hardEdge,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'sf'),
              BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: 'sf'),

              BottomNavigationBarItem(icon: Icon(Icons.message),label: 'sf'),
              BottomNavigationBarItem(icon: Icon(Icons.info),label: 'sf'),
            ],
            currentIndex: selectIndex,
            onTap: change,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
onPressed: null,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        child: Center(
          child: Text('TAB:  $selectIndex',
          style: TextStyle(
            fontSize: 32
          ),),
        ),
      ),
    );
  }
}
