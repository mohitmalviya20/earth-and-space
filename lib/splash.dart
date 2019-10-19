import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quizstar/home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center 
  @override
  Widget build(BuildContext context) {
    var center = Center(
        child:Text(
          "Earth and Space\n\nA quiz that tests your geographical and astronomical skill!!!",
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white,
            fontFamily: "Satisfy",
          ),
          textAlign: TextAlign.center,
        ),
      );
    return Scaffold(
      backgroundColor: Colors.black,
      body: center,
    );
  }
}