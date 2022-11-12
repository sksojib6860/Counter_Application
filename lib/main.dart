
import  'package:flutter/material.dart';
import 'package:untitled1/splash_screen.dart';
import 'home_page.dart';

main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  // int teamAPoint = 0;
  // int teamBPoint = 0;
  // void adOnePoint() {
  //   print('AddOnePoint');
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }
}
