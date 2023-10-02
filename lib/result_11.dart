import 'package:first_project/hard.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_screen.dart';
import 'matching_1.dart';

class Result11 extends StatefulWidget {
  const Result11({super.key});

  @override
  State<Result11> createState() => _Result11State();
}

class _Result11State extends State<Result11> {
  @override
  Widget build(BuildContext context) {
    int score=700;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.red.shade300.withOpacity(0.4),

                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.red.shade300.withOpacity(0.6),

                ]
            )
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
              Container(
                height: 400.0,
                width: double.infinity,
                child: Lottie.asset('assets/animated11.json'),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red.shade300,width: 2.0),
                        color: Colors.blueGrey.shade600.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                           bottomRight:Radius.circular(15.0),
                        ),
                      ),
                      child: TextButton(
                        child:Text('Colse ',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight:FontWeight.bold,
                            color: Colors.white,
                          ),

                        ) ,onPressed:(){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return Hard();
                            })

                        );
                      } ,),
                    ),
                    SizedBox(width: 200.0,),
                    Container(
                      height: 80.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red.shade300,width: 2.0),
                        color: Colors.blueGrey.shade600.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0)
                        ),
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
                        color: Colors.white,
                      )),
                    )
                  ],
                ),
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
