import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  final name;
  final pass;
  const HomeScreen({super.key,required this.name,required this.pass});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> cardname = ["সৃষ্টিকর্তা", "নবী-রাসুল", "ঈমান", "নামাজ", "হজ"];
  List images=[
    "assets/image/i love allah.jpeg",
    "assets/image/madina.jpeg",
    "assets/image/iman image.jpeg",
    "assets/image/namg image.jpeg",
    "assets/image/allah image 2.png"
  ];
  // void initState() {
  //   goscreen();
  //   super.initState();
  // }
  //
  // Future goscreen() async {
  //   Future.delayed(Duration(seconds: 2)).then((Value) {
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => QuestionPage1()));
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
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
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                        child: Text(
                                      "সব স্কোর দেখুন!",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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

               GridView.builder(
                 shrinkWrap: true,
                 itemCount: 5,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2
                   ),
                   itemBuilder: (context,index){
                   return InkWell(
                     onTap: () {},

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
                               AssetImage(images[index]),
                             ),
                             Text(
                               "${cardname[index]}",
                               style: TextStyle(
                                   fontSize: 16, fontWeight: FontWeight.bold),
                             )
                           ],
                         ),
                       ),
                     ),
                   );
                   }
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}