import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 280,
                width: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Colors.deepPurple.shade200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 35),
                child: Image.asset(
                  "assets/images/img.png",
                  height: 280,
                  width: 600,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.mail),
                labelText: "Enter the Email",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                labelText: "Enter the password",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            color: Colors.deepPurple,
            child: Text("Login"),
          )
        ],
      ),
    );
  }
}
