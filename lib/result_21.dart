import 'package:first_project/matching_2.dart';
import 'package:first_project/matching_3.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_screen.dart';
import 'matching_1.dart';
import 'medium.dart';

class Result21 extends StatefulWidget {
  const Result21({super.key});

  @override
  State<Result21> createState() => _Result21State();
}

class _Result21State extends State<Result21> {
  int score=500;
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
                Colors.teal.shade300,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.teal.shade300,




                ]
            ),
        ),
        child: SingleChildScrollView(
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
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 400.0,
                width: double.infinity,
                child: Lottie.asset('assets/animated21.json'),
              ),
              SizedBox(
                height: 50.0,

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 3.0),
                      color: Colors.teal.shade300,
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
                            return Medium();
                          })

                      );
                    } ,),
                  ),
                  SizedBox(width: 200.0,),
                  Container(
                    height: 80.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 3.0),
                      color: Colors.teal.shade300,
                      borderRadius: BorderRadius.circular(20.0),
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
      ),
    );

  }
}

