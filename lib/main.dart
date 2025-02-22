import 'package:flutter/material.dart';
import 'package:quize_app/View/Splash%20screen/splash_screen2.dart';

import 'View/home_screen.dart';
import 'View/question_page1.dart';
import 'View/question_page2.dart';
import 'View/Splash screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

