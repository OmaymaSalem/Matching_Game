import 'package:first_project/medium.dart';
import 'package:first_project/result.dart';
import 'package:first_project/result_11.dart';
import 'package:first_project/result_2.dart';
import 'package:first_project/result_21.dart';
import 'package:first_project/result_3.dart';
import 'package:first_project/result_3_1.dart';
import 'package:first_project/sliding_puzzle.dart';
import 'package:flutter/material.dart';

import 'easy.dart';
import 'hard.dart';
import 'home_screen.dart';
import 'matching_1.dart';
import 'matching_11.dart';
import 'matching_2.dart';
import 'matching_21.dart';
import 'matching_31.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Sliding(),
      home: HomeScreen(),
      //home: Matching21(),
      //home: Result21(),
      //home: Matching11(),
      //home: Result11(),
      //home: Matching33(),
      //home: Result31(),
      //home: Easy(),
      //home: Medium(),
      //home: Hard(),
       //home:CardScreen(),
      //home: Matching33(),





    );
  }
}
