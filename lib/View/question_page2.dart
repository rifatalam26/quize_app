import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionPage2 extends StatefulWidget {
  const QuestionPage2({super.key});

  @override
  State<QuestionPage2> createState() => _QuestionPage2State();
}

class _QuestionPage2State extends State<QuestionPage2> {
  bool check = false;
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.only(top: 100),
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
                            "কোন পর্বতের গুহায় মহানবী (স.)",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                          ),
                          Text(
                            "-এর নিকট ওহী নাযিল হয়",
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
                              "সাফা।",
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
                              "মারওয়া।",
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
                              "হেরা।",
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
                              "সওর।",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.deepOrange),
                            )
                          ],
                        ),
                        InkWell(
                          onTap: (){
                            print("fhrdgffd------");
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
