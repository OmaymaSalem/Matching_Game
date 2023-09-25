import 'package:first_project/home_screen.dart';
import 'package:first_project/matching_2.dart';
import 'package:first_project/matching_3.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'matching_1.dart';

class Result2 extends StatefulWidget {
  const Result2({super.key});

  @override
  State<Result2> createState() => _Result2State();
}

class _Result2State extends State<Result2> {
  int score=400;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.deepOrange.shade400.withOpacity(0.4),
              Colors.black26,
              Colors.black26,
              Colors.black26,
              Colors.black26,
              Colors.deepOrange.shade400.withOpacity(0.4),

            ]

          )
        ),
        child: Column(
          children: [
               Padding(
                 padding: EdgeInsets.only(
                   top: 50.0,
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text.rich(
                     TextSpan(
                       children: [
                         TextSpan(
                           text: 'Score:',
                           style: Theme.of(context).textTheme.titleLarge,
                         ),
                         TextSpan(
                           text: '$score',
                           style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.brown),
                         ),
                       ]
                     )
                   ),
                     SizedBox(width: 20.0,),
                     Container(
                       height: 100.0,
                       width: 100.0,
                       child: Lottie.asset('assets/prize2.json'),
                     ),

                   ]
                 ),
               ),
                Container(
                  height: 400.0,
                  width: double.infinity,
                  child: Lottie.asset('assets/well done.json'),
                ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       width: 110.0,
                       height: 80.0,
                       decoration: BoxDecoration(
                         color: Colors.black54.withOpacity(0.5),
                         borderRadius: BorderRadius.circular(30.0),
                       ),
                       child: TextButton(
                         child:Text('Colse ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight:FontWeight.bold,
                              color: Colors.orange.shade300,
                            ),

                         ) ,onPressed:(){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context){
                               return HomeScreen();
                             })

                           );
    } ,),
                     ),
                     SizedBox(width: 400.0,),
                     Container(
                       height: 80.0,
                       width: 110.0,
                       decoration: BoxDecoration(
                         color: Colors.black54.withOpacity(0.5),
                         borderRadius: BorderRadius.circular(30.0),
                       ),
                       child: IconButton(onPressed:(){
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder:(context){
                             return Matching();
                           }),);
                       } , icon:Icon(
                         Icons.arrow_forward,
                         size: 40.0,
                         color: Colors.orange.shade300,
                       )),
                     )
                   ],
                 ),

          ],
        ),
      ),


    );
  }
}


