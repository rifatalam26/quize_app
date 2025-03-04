import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:quize_app/View/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _FirstPageState();
}

class _FirstPageState extends State<LoginScreen> {
  static const String KEYLOGIN="Login";
  @override
  void initState (){

    super.initState();
    wherToGo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In Page",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              TextFormField(
               // controller: nameController,
                decoration: InputDecoration(
                    hintText: "Enter name", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
              //  controller: passwordController,
                decoration: InputDecoration(
                    hintText: "Enter password", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                // onTap: () async {
                //   SharedPreferences p = await SharedPreferences.getInstance();
                //   if (nameController.text.isNotEmpty &&
                //       passwordController.text.isNotEmpty) {
                //     await p.setString("name", nameController.text.toString());
                //     await p.setString(
                //         "pass", passwordController.text.toString());
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => HomeScreen(
                //
                //           ),
                //         ));
                //   } else {
                //     print(" Please Enter Name or Password");
                //   }
                // },
                child: Container(
                  height: 40,
                  width: 200,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
          

    ),
              )
            ],
          ),
        ),
      ),
    );
  }
Future<void> wherToGo() async {

  var sharedPref=await SharedPreferences.getInstance();
  sharedPref.getBool(KEYLOGIN);

  Timer(Duration(seconds: 2),(){
   // BuildContext context;
  Navigator.push(context,
      MaterialPageRoute(builder: (context)=>HomeScreen()));
  },);
}
}
