import 'package:audioplayers/audioplayers.dart';
import 'package:first_project/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final player =AudioPlayer();
  int score=800;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:Container(
        width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
               Colors.lightGreen.shade800,
              Colors.white,
                Colors.lime.shade700,
                Colors.lime.shade700,
                Colors.white,
                Colors.lightGreen.shade800,
              ]
            )
          ),

        child: Stack(



        children: [

          Container(
            height: 900.0,
            width: double.infinity,
            child: Lottie.asset('assets/cong2.json'),
          ),

              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 50.0
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text.rich(
                    TextSpan(
                      children:[
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
                  ),]
                ),
              ),


          Container(
            height: 600.0,
            width: double.infinity,
            child: Lottie.asset('assets/cong.json'),
          ),
          Container(
            height: 300.0,
            width: double.infinity,
            child: Lottie.asset('assets/party.json'),
          ),
           Center(
             child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
               
                children: [

                  Container(
                    child:Lottie.asset('assets/prize.json'),

                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 10.0,
                    ),
                    child: Container(
                      height: 70.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.brown.shade300.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: Colors.white.withOpacity(0.7),width: 2.0),
                      ),
                      child: TextButton(
                          onPressed:(){
                            Navigator.push(context,
                                MaterialPageRoute(builder:(context){
                                  return HomeScreen();
                                }));
                          }, child:Text('Close',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),)),
                    ),
                  ),
                ],
              ),
           ),


        ],


        ),
      ),
    );
  }
}
