import 'package:first_project/matching_3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'matching_1.dart';
import 'matching_2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:   Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.orangeAccent.withOpacity(0.4),
                Colors.orangeAccent.withOpacity(0.4),
              Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.green.withOpacity(0.4),

              ]
            )

          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: SingleChildScrollView(
              child: Column(
                children:[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: Container(
                      child: Center(
                        child: Text('Please Select The Level to Start Playing',
                          style: GoogleFonts.arefRuqaa(
                            fontSize: 50.0,
                            color: Colors.blueGrey.shade800,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                                children: [

                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 5.0,
                                      ),
                                      child: Stack(
                                        children: [
                                              Container(
                                                width:500.0,
                                                height:150,

                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(30.0),
                                                    color: Colors.green.shade900,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        spreadRadius: 0.5,
                                                        blurRadius: 4,
                                                        color: Colors.black45,
                                                        offset: Offset(3, 5),
                                                      )
                                                    ]
                                                ),

                                              ),
                                              Container(
                                               width: 500.0,
                                                height: 140,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30.0),
                                                  color: Colors.green.shade200,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        spreadRadius: 0.3,
                                                        blurRadius: 4,
                                                        color: Colors.black12,
                                                        offset: Offset(5, 3),
                                                      )
                                                    ]
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [Center(child: TextButton(
                                                    child: Text('Level  1',
                                                    style: GoogleFonts.adamina(
                                                      fontSize: 40.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                    ),
                                                    onPressed: (){
                                                      Navigator.push(context,

                                                          MaterialPageRoute(builder: (context){
                                                            return CardScreen();
                                                          }));
                                                    },
                                                  )),
                                                  SizedBox(width: 170.0,),
                                                  Icon(
                                                    Icons.star_outline_outlined,
                                                    size: 80.0,
                                                    color: Colors.orangeAccent,
                                                  ),

                                                  ],
                                                ),

                                          ),


                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 40.0,),
                                    Stack(
                                    children: [
                                      Container(
                                        width:500.0,
                                        height:150,

                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30.0),
                                            color: Colors.brown,
                                            boxShadow: [
                                              BoxShadow(
                                                spreadRadius: 0.5,
                                                blurRadius: 4,
                                                color: Colors.black45,
                                                offset: Offset(3, 5),
                                              )
                                            ]
                                        ),

                                      ),
                                      Container(
                                        width: 500.0,
                                        height: 140,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30.0),
                                            color: Colors.brown.shade200,
                                            boxShadow: [
                                              BoxShadow(
                                                spreadRadius: 0.3,
                                                blurRadius: 4,
                                                color: Colors.black12,
                                                offset: Offset(5, 3),
                                              )
                                            ]
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [Center(child: TextButton(
                                            child: Text('Level  2',
                                              style: GoogleFonts.adamina(
                                                fontSize: 40.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),),
                                            onPressed: (){
                                              Navigator.push(context,

                                                  MaterialPageRoute(builder: (context){
                                                    return Matching();
                                                  }));
                                            },
                                          ),
                                          ),
                                              SizedBox(width: 80.0,),
                                              Icon(
                                                Icons.star_half_sharp,
                                                size: 80.0,
                                                color: Colors.orangeAccent,
                                              ),
                                            Icon(
                                              Icons.star_half_sharp,
                                              size: 80.0,
                                              color: Colors.orangeAccent,
                                            ),
                                          ],
                                        ),

                                      ),


                                    ],
                                  ),
                                    SizedBox(height: 40.0,),
                                    Stack(
                                    children: [
                                      Container(
                                        width:500.0,
                                        height:150,

                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30.0),
                                            color: Colors.lime,
                                            boxShadow: [
                                              BoxShadow(
                                                spreadRadius: 0.5,
                                                blurRadius: 4,
                                                color: Colors.black45,
                                                offset: Offset(3, 5),
                                              )
                                            ]
                                        ),

                                      ),
                                      Container(
                                        width: 500.0,
                                        height: 140,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30.0),
                                            color: Colors.lime.shade100,
                                            boxShadow: [
                                              BoxShadow(
                                                spreadRadius: 0.3,
                                                blurRadius: 4,
                                                color: Colors.black12,
                                                offset: Offset(5, 3),
                                              )
                                            ]
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [Center(child: TextButton(
                                            child: Text('Level  3',
                                              style: GoogleFonts.adamina(
                                                fontSize: 40.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),),
                                            onPressed: (){
                                              Navigator.push(context,

                                                  MaterialPageRoute(builder: (context){
                                                     return Cardee();
                                                  }));
                                            },
                                          )),
                                          SizedBox(
                                            width: 80.0,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 60.0,
                                            color: Colors.orangeAccent,
                                          ),
                                            Icon(
                                              Icons.star,
                                              size: 60.0,
                                              color: Colors.orangeAccent,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 60.0,
                                              color: Colors.orangeAccent,
                                            ),

                                          ],
                                        ),

                                      ),


                                    ],
                                  ),
                                ],
                              ),
                    ),
                      SizedBox(
                        width: 50.0,
                      ),

                      Container(
                        height: 500.0,
                        width: 500.0,
                        child: Lottie.asset('assets/cute.json'),
                      ),
                    ]
                ),
                  ),]
              ),
            ),
          ),
        ),




    );
  }
}

