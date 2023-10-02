import 'package:first_project/matching_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'easy.dart';
import 'home_screen.dart';
import 'matching_1.dart';

class Result31 extends StatefulWidget {
  const Result31({super.key});

  @override
  State<Result31> createState() => _Result31State();
}

class _Result31State extends State<Result31> {
  @override
  Widget build(BuildContext context) {
    int score=300;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [


                  Colors.white,
                 Colors.orange.shade200,
                  Colors.grey.shade300,
                  Colors.grey.shade300,
                  Colors.grey.shade300,
                  Colors.grey.shade300,
                  Colors.grey.shade300,
                  Colors.grey.shade300,
                  Colors.orange.shade200,
                  Colors.white,


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
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                height: 200.0,
                child: Center(
                  child: Text('Good',
                    style: GoogleFonts.aguafinaScript(
                      fontWeight: FontWeight.bold,
                      fontSize: 100.0,
                    ),

                  ),
                ),
              ),
              Container(
                height: 200.0,
                width: double.infinity,
                child: Lottie.asset('assets/well.json'),
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
                        border: Border.all(color: Colors.orange.shade200,width: 2.0),
                        color: Colors.blueGrey.shade600.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          topRight:Radius.circular(15.0),
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
                              return Easy();
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
                        color: Colors.blueGrey.shade600.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0)
                        ),
                      ),
                      child: IconButton(onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder:(context){
                            return CardScreen();
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
