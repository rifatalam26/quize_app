import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quize_app/View/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Local database/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const String KEYLOGIN = "login";

  get name => null;

  get pass => null;
  @override
  void initState() {
    super.initState();

    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
                child: CircularProgressIndicator(
              color: Colors.blue,
              backgroundColor: Colors.grey,
              strokeWidth: 3,
            )),
          ],
        ),
      ),
    ));
  }

  Future<void> whereToGo() async {
    var sharedpref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedpref.getBool(KEYLOGIN);

    Timer(Duration(seconds: 3), () {
      if (isLoggedIn != null) {
        if (isLoggedIn) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeScreen(name: name, pass: pass)));
        }else{
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => LoginScreen()));
        }
      }else{
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => LoginScreen()));
      }
    });
  }
}
