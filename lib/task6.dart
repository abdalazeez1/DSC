import 'package:flutter/material.dart';

import 'task5.dart';

class Task6 extends StatefulWidget {
  @override
  _Task6State createState() => _Task6State();
}

class _Task6State extends State<Task6> {
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final  _key = GlobalKey<FormState>();
  bool secure = true;

  void createAccount() {
    final valid = _key.currentState.validate();
    if (!valid) return;
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => Task5()));

  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.yellow[400],
          height: size.height,
          width: size.width,
          child: Form(
              key: _key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SignUp ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: size.height / 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: TextFormField(
                      validator: (e){
                      if(e.length<6){
                        return 'please enter more 6 characters';
                      }return null;
                        },
                      controller: userName,
                      decoration: InputDecoration(
                          helperText: 'Required',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          prefixIcon: Icon(Icons.person_pin),
                          labelText: 'User Name'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: TextFormField(
                      validator: (e){
                        if(!e.contains('@')){
                          return 'please enter valid email';
                        }return null;
                      },
                      controller: email,
                      decoration: InputDecoration(
                          helperText: 'Required',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          prefixIcon: Icon(Icons.email),
                          labelText: 'Email'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: TextFormField(
                      validator: (e){
                        if(e.length<6){
                          return 'please enter more 6 characters';
                        }return null;
                      },
                      obscureText: secure,
                      controller: password,
                      decoration: InputDecoration(
                          helperText: 'Required',
                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye),
                            onPressed: () {
                              setState(() {
                                secure = !secure;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          prefixIcon: Icon(Icons.lock),
                          labelText: 'Password'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: createAccount,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber[800])),
                    child: Text(
                      'create account',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
