import 'package:first_project/result.dart';
import 'package:first_project/result_2.dart';
import 'package:first_project/result_3.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'matching_1.dart';
import 'matching_2.dart';
import 'matching_3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Cardee(),
      //home: Result(),
      //home: CardScreen(),
      //home: Result2(),
      //home: Matching(),
      //home: Result3(),
      home:HomeScreen(),





    );
  }
}
