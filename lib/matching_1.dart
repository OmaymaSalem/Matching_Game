import 'dart:async';
import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:first_project/matching_11.dart';
import 'package:first_project/matching_2.dart';
import 'package:first_project/matching_3.dart';
import 'package:first_project/result.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'game_1.dart';


class Cardee extends StatefulWidget {
  const Cardee({super.key});

  @override
  State<Cardee> createState() => _CardeeState();
}


class _CardeeState extends State<Cardee> {
  final Game _game=Game();
  int score=0;
  int tries=0;
  int second=0;
  Timer ? timer;
  var player =AudioPlayer();


  @override
  void initState() {

    super.initState();
    _game.initGame();

  }
  @override
  Widget build(BuildContext context) {
    if(timer==null){
      timer=Timer.periodic(Duration(seconds: 1), (t) {

        startTimer();
      });
    }
    return Scaffold(
      extendBodyBehindAppBar: true,

      // backgroundColor: Colors.purple,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/photo2.jpeg'),
            fit: BoxFit.fill
          )

        ),

        child:  BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4,sigmaY: 4),
          child: Container(
            decoration: BoxDecoration(
              gradient:LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.brown.shade200,

                  Colors.black87.withOpacity(0.5),

                  Colors.brown.shade200,
                ]
              )
            ),
            child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                        
                        children: [



                          Center(
                            child: Text(
                              'Matching Game',
                              style: GoogleFonts.almendraDisplay(
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange.shade300,
                              )
                            ),
                          ),
                          Container(

                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 70.0,
                                  width: 40.0,
                                  decoration: BoxDecoration(
                                    color: Colors.brown.shade100.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(40.0),
                                    border:Border.all(color: Colors.red.shade600.withOpacity(0.25),width: 4.0)
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Score',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),

                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        '$score',
                                        style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.w900,
                                        ),

                                      ),


                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Expanded(
                                child: Container(
                                  height: 70.0,
                                  width: 40.0,
                                  decoration: BoxDecoration(
                                      color: Colors.brown.shade100.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(40.0),
                                      border:Border.all(color: Colors.red.shade600.withOpacity(0.25),width: 4.0)
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Tries',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),

                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        '$tries',
                                        style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.w900,
                                        ),

                                      ),


                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 50.0,
                          ),


                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(

                                    decoration: BoxDecoration(
                                      color: Colors.orange.shade300,
                                      borderRadius: BorderRadius.circular(50.0),

                                    ),
                                    height: 60.0,
                                    width: 60.0,
                                    child: IconButton(onPressed:(){

                                        Navigator.push(context,
                                            MaterialPageRoute(builder:(context){
                                              return Matching11();
                                            } ));

                                    }, icon:Icon(
                                      Icons.arrow_back,
                                      size:30.0,
                                      color: Colors.white,

                                    ),),
                                  ),
                                  SizedBox(width: 350.0,),

                                  SizedBox(
                                  width:335.0,
                                  height:335.0,
                                  child: GridView.builder(

                                      itemCount: _game.gameImg!.length ,
                                      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4,
                                        crossAxisSpacing: 16.0,
                                        mainAxisSpacing: 16.0,
                                      ),
                                      itemBuilder:(context,index){
                                        if(second<4){
                                          _game.gameImg![index]= _game.card_list[index];
                                        }
                                        if(second==4){
                                          _game.gameImg![index]=_game.hiddenCardPath;
                                        }

                                        return GestureDetector(

                                          onTap: (){

                                            print(_game.card_list[index]);
                                            setState(() {
                                              tries++;
                                              _game.gameImg![index]= _game.card_list[index];
                                              // _game.gameImg![index]=_game.hiddenCardPath;
                                              _game.matchecheck.add({index:_game.card_list[index]});
                                            });
                                            if( _game.matchecheck.length==2){
                                              if(_game.matchecheck[0].values.first==_game.matchecheck[1].values.first){
                                                print(true);
                                                _game.matchecheck.clear();
                                                score+=100;
                                                player.play(AssetSource('success2.mp3'));
                                                if( score==800){
                                                  Navigator.push(context,
                                                      MaterialPageRoute(builder:(context){
                                                        return Result();
                                                      },));
                                                  player.play(AssetSource('congr.m4a'));
                                                }




                                              }else{
                                                print(false);
                                                Future.delayed(Duration(milliseconds: 500),(){
                                                  print(_game.gameImg);
                                                  setState(() {
                                                    _game.gameImg![_game.matchecheck[0].keys.first]=_game.hiddenCardPath;
                                                    _game.gameImg![_game.matchecheck[1].keys.first]=_game.hiddenCardPath;
                                                    _game.matchecheck.clear();

                                                  });
                                                });
                                              }

                                            }
                                          },
                                          child:  Container(
                                            height: 10.0,
                                            width: 10.0,
                                            padding: EdgeInsets.all(1.0),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                              border: Border.all(color: Colors.orange.shade300,width: 1.0),
                                              //borderRadius: BorderRadiusDirectional.circular(8.0),
                                              image: DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(_game.gameImg![index]),),

                                            ),
                                          ),

                                        );

                                      } ),
                                ),
                                  SizedBox(width: 350.0,),




                                ]
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 50.0,
                              vertical: 50.0,
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 40.0,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(20.0),
                                        border:Border.all(color: Colors.red.shade600.withOpacity(0.25),width: 4.0)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        TextButton(
                                            onPressed:(){
                                              _game.initGame();
                                              score=0;
                                              second=0;
                                              tries=0;
                                              _game.card_list.shuffle();

                                            },
                                            child: Text(
                                              'Reset',
                                              style: TextStyle(
                                                color: Colors.orange.shade300,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )),
                                        SizedBox(width: 10.0,),
                                        Icon(
                                          Icons.refresh,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100.0,
                                  ),

                                  Container(


                                    height: 40.0,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(20.0),
                                        border:Border.all(color: Colors.red.shade600.withOpacity(0.25),width: 4.0)
                                    ),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                              'Time :',
                                              style: TextStyle(
                                                  color: Colors.orange.shade300,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.0
                                              ),
                                            ),
                                              SizedBox(width: 4,),
                                              Text(
                                                '$second',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.0
                                                ),
                                              ),
                                            ]
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Icon(
                                            Icons.timer_outlined,
                                          ),]
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),

                  ),
          ),
        ),


      ),


    );
  }
  startTimer(){
    setState(() {
      second++;
    });
  }
}