import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCircleAvater extends StatelessWidget {
  const CustomCircleAvater({
    super.key,
    required this.counter_seconds,
  });

  final int counter_seconds;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundColor: Colors.white,
      child: Text(
        "$counter_seconds",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
      ),
    );
  }
}