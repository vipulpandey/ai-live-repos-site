import 'package:aiindia/Navbar/Navbar.dart';
import 'package:flutter/material.dart';
import 'package:aiindia/LandingPage/LandingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'learn-ai',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                // Color.fromRGBO(211, 211, 211, 1.0),
                // Color.fromRGBO(72, 219, 251, 1.0)
                Color.fromRGBO(195, 20, 50, 1.0),
                Color.fromRGBO(36, 11, 54, 1.0)
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              SizedBox(
                height: 30,
              ),
              LandingPage(),
              SizedBox(
                height: 140,
              ),
              Text("Copyright 2020, Developed using Flutter", style: TextStyle(color: Colors.yellow),),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
