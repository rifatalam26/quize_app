import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quize_app/View/question_page1.dart';
import 'package:quize_app/View/question_page2.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen3> {
  void initState() {
    super.initState();

    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => QuestionPage2()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   "Welcome",
            //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            // ),
            SizedBox(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                  backgroundColor: Colors.grey,
                  strokeWidth: 3,
                )),
          ],
        ),
      ),
    );
  }
}
