import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quize_app/View/Splash%20screen/splash_screen3.dart';
import 'package:quize_app/View/question_page2.dart';

import 'Custom Circle/custom_circleavater.dart';

class QuestionPage1 extends StatefulWidget {
  const QuestionPage1({super.key});

  @override
  State<QuestionPage1> createState() => _QuestionPage1State();
}

class _QuestionPage1State extends State<QuestionPage1> {
  bool check = false;
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  int counter_seconds = 10;

  void initState() {
    setTimer();
    super.initState();
  }

  void setTimer() async {
    Future.delayed(Duration(seconds: 1)).then((value) {
      print("--------$counter_seconds-------");
      setState(() {
        if (counter_seconds > 0) {
          counter_seconds--;
          setTimer();
        } else {
          print("--------End--------");
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => QuestionPage2()));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              CustomCircleAvater(counter_seconds: counter_seconds),
              Card(
                margin: EdgeInsets.only(top: 30),
                elevation: 10,
                shadowColor: Colors.black,
                child: Container(
                  height: 100,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "?",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrangeAccent),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "আল্লাহকে একক সত্বা হিসে ",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                          ),
                          Text(
                            "স্বীকার ও বিশ্বাস করাকে কি বলে?",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                shadowColor: Colors.black,
                margin: EdgeInsets.only(top: 20),
                child: Container(
                  height: 300,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                activeColor: Colors.blue,
                                checkColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                value: check,
                                onChanged: (c) {
                                  check = c!;
                                  setState(() {});
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "তাওহিদ।",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.deepOrange),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                activeColor: Colors.blue,
                                checkColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                value: check1,
                                onChanged: (c) {
                                  check1 = c!;
                                  setState(() {});
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "আকাঈদ।।",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.deepOrange),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                activeColor: Colors.blue,
                                checkColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                value: check2,
                                onChanged: (c) {
                                  check2 = c!;
                                  setState(() {});
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "রিসালাত।।",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.deepOrange),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                activeColor: Colors.blue,
                                checkColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                value: check3,
                                onChanged: (c) {
                                  check3 = c!;
                                  setState(() {});
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "নবুইয়্যত।।",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.deepOrange),
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            counter_seconds = -1;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SplashScreen3()));
                          },
                          child: Container(
                            height: 40,
                            width: 260,
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "সাবমিট করুন",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


