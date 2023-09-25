import 'package:first_project/matching_3.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_screen.dart';
import 'matching_1.dart';

class Result3 extends StatefulWidget {
  const Result3({super.key});

  @override
  State<Result3> createState() => _Result3State();
}

class _Result3State extends State<Result3> {
  int score=600;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.orange.shade300,
             Colors.green,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.green,
              Colors.orange.shade300,

            ]
          )
        ),
        child: Column(
          children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 40.0,
                ),
                child: Text.rich(
                  TextSpan(
                    children:[
                      TextSpan(
                        text:'Score:' ,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      TextSpan(
                        text:'$score' ,
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.teal),
                      )
                    ]
                  ),
                ),
              ),
              Container(
              height: 400.0,
              width: double.infinity,
              child: Lottie.asset('assets/excellent.json'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange.shade200,width: 2.0),
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextButton(
                    child:Text('Colse ',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight:FontWeight.bold,
                        color: Colors.black,
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
                SizedBox(width: 200.0,),
                Container(
                  height: 80.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange.shade200,width: 2.0),
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: IconButton(onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context){
                        return Cardee();
                      }),);
                  } , icon:Icon(
                    Icons.arrow_forward,
                    size: 40.0,
                    color: Colors.black,
                  )),
                )
              ],
            ),
            SizedBox(
              height: 100.0,
            ),


          ],
        ),
      ),
    );
  }
}
