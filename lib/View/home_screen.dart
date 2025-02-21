import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  margin: EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    height: 90,
                    width: 350,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage:
                            AssetImage("assets/image/flower pic.jpeg"),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "সর্বশেষ স্কোর-",
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                Text(" 10(সৃষ্টিকর্তা)",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purpleAccent)),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 35,
                                    width: 110,
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrange,
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Center(
                                        child: Text(
                                          "সব স্কোর দেখুন!",
                                          style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      color: Colors.deepOrange,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                      child: Text(
                                        "রেটিং দিন!",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      )),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                // backgroundColor: Colors.blueGrey,
                                backgroundImage:
                                AssetImage("assets/image/i love allah.jpeg"),
                              ),
                              Text(
                                "সৃষ্টিকর্তা",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                // backgroundColor: Colors.blueGrey,
                                backgroundImage:
                                AssetImage("assets/image/madina.jpeg"),
                              ),
                              Text(
                                "নবী-রাসুল",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap:(){} ,
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                // backgroundColor: Colors.blueGrey,
                                backgroundImage:
                                AssetImage("assets/image/iman image.jpeg"),
                              ),
                              Text(
                                "ঈমান",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                // backgroundColor: Colors.blueGrey,
                                backgroundImage:
                                AssetImage("assets/image/namg image.jpeg"),
                              ),
                              Text(
                                "নামাজ",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                // backgroundColor: Colors.blueGrey,
                                backgroundImage:
                                AssetImage("assets/image/allah image 2.png"),
                              ),
                              Text(
                                "সৃষ্টিকর্তা",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                // backgroundColor: Colors.blueGrey,
                                backgroundImage:
                                AssetImage("assets/image/mokka image.jpeg"),
                              ),
                              Text(
                                "হজ",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                // backgroundColor: Colors.blueGrey,
                                backgroundImage:
                                AssetImage("assets/image/i love allah.jpeg"),
                              ),
                              Text(
                                "সৃষ্টিকর্তা",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                // backgroundColor: Colors.blueGrey,
                                backgroundImage:
                                AssetImage("assets/image/madina.jpeg"),
                              ),
                              Text(
                                "নবী-রাসুল",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
