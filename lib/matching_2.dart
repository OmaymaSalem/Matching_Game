import 'dart:async';
import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:first_project/matching_31.dart';
import 'package:first_project/result_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'game_2.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {



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

      body: Container(

        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fruits3.jpeg'),
            fit: BoxFit.fill,
          ),

        ),


        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 6,sigmaX: 6),

          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white,
                 Colors.purple.shade800,
                  Colors.purple.shade800.withOpacity(0.2),
                 // Colors.black26,
                  //Colors.black26,
                  //Colors.black26,
                  Colors.white.withOpacity(0.2),
                  Colors.white.withOpacity(0.2),
                  Colors.white.withOpacity(0.2),
                  Colors.white.withOpacity(0.2),
                  Colors.white.withOpacity(0.2),

                  Colors.purple.shade800.withOpacity(0.2),
                  Colors.white,

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
                        style: GoogleFonts.almendra(
                          fontSize: 50.0,
                          color: Colors.red.shade100,
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
                              color: Colors.pink.shade900.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(color: Colors.green.shade200,width: 3.0),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Score',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
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
                                    color: Colors.white,
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
                              color: Colors.pink.shade900.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(color: Colors.green.shade200,width: 3.0),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Tries',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
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
                                    color: Colors.white,
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


                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(


                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 5,
                            ),
                            child: Container(

                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50.0),

                              ),
                              height: 60.0,
                              width: 60.0,
                              child: IconButton(onPressed:(){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context){
                                      return Matching33();
                                    }));



                              }, icon:Icon(
                                Icons.arrow_back,
                                size:30.0,
                                color: Colors.deepPurple,

                              ),),
                            ),
                          ),
                        SizedBox(width: 50.0,),
                          SizedBox(
                          width:300.0,
                          height:300.0,
                          child: GridView.builder(

                              itemCount: _game.gameImg!.length ,
                              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 16.0,
                                mainAxisSpacing: 16.0,
                              ),
                              itemBuilder:(context,index){
                                if(second<4){
                                  _game.gameImg![index]= _game.card_list[index];
                                }
                                if(second==5){
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
                                        player.play(AssetSource('successbell.mp3'));

                                        if(score==400){
                                          Navigator.push(context,
                                          MaterialPageRoute(builder:(context){
                                            return Result2();
                                          }),
                                          );
                                          player.play(AssetSource('goodresult.mp3'));


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
                                    height: 100.0,
                                    width: 100.0,
                                    padding: EdgeInsets.all(16.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadiusDirectional.circular(16.0),
                                      border: Border.all(color: Colors.green.shade200,width: 2.0),
                                      image: DecorationImage(

                                        image: AssetImage(_game.gameImg![index]),),
                                    ),
                                  ),

                                );

                              } ),
                        ),]
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
                                color: Colors.pink.shade900.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(color: Colors.green.shade200,width: 3.0),

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
                                          color: Colors.white,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                  SizedBox(width: 10.0,),
                                  Icon(
                                    Icons.refresh,
                                    color: Colors.red.shade100,
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
                                color: Colors.pink.shade900.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(color: Colors.green.shade200,width: 3.0),
                              ),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Time : $second',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Icon(
                                      Icons.timer_outlined,
                                      color: Colors.red.shade100,
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