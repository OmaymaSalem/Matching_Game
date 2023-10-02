import 'dart:async';
import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:first_project/result_21.dart';
import 'package:first_project/result_3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'game_2_1.dart';
import 'matching_2.dart';

class Matching21 extends StatefulWidget {
  const Matching21({super.key});

  @override
  State<Matching21> createState() => _Matching21State();
}

class _Matching21State extends State<Matching21> {
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
                image: AssetImage('assets/images/vilio.jpeg'),
               fit: BoxFit.fill,
            )

        ),

        child:  BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10,sigmaY:10),
          child: Container(
            decoration: BoxDecoration(
                gradient:LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors:[
                      Colors.white,
                      Colors.orange.withOpacity(0.5),
                      Colors.black26,
                      Colors.black26,
                      Colors.black26,
                      Colors.black26,
                      Colors.black26,
                      Colors.black26,
                      Colors.orange.withOpacity(0.5),
                      Colors.white,
                    ]
                )
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [



                  Center(
                    child: Text(
                        'Matching Game',
                        style: GoogleFonts.adamina(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade900,
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
                              color:  Colors.grey.shade700.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(15.0),
                              border:Border.all(color: Colors.orange.shade600,width: 4.0)
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Score',
                                style: TextStyle(
                                  color: Colors.white,
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
                              color: Colors.grey.shade700.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(15.0),
                              border:Border.all(color: Colors.orange.shade600,width: 4.0)
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Tries',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,

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


                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(

                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50.0),

                              ),
                              height: 60.0,
                              width: 60.0,
                              child: IconButton(onPressed:(){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context){
                                      return CardScreen();
                                    }));



                              }, icon:Icon(
                                Icons.arrow_back,
                                size:30.0,
                                color: Colors.brown,

                              ),),
                            ),
                            SizedBox(width: 200.0,),

                            SizedBox(
                              width:400.0,
                              height:300.0,
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
                                            player.play(AssetSource('correct2.mp3'));
                                         if( score==500){
                                              Navigator.push(context,
                                                 MaterialPageRoute(builder: (context){
                                                    return Result21() ;
                                                  }));

                                             player.play(AssetSource('congr4.mp3'));
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
                                        height: 50.0,
                                        width: 50.0,
                                        padding: EdgeInsets.all(1.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15.0),
                                          border: Border.all(color: Colors.orange.shade600,width: 2.0),
                                          //borderRadius: BorderRadiusDirectional.circular(8.0),
                                          image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: AssetImage(_game.gameImg![index]),

                                          ),

                                        ),
                                      ),

                                    );

                                  } ),
                            ),
                            SizedBox(width: 250.0,),




                          ]
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 50.0,
                      vertical: 50.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade700.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(30.0),
                              border:Border.all(color: Colors.orange.shade600,width: 2.0)
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
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                              SizedBox(width: 10.0,),
                              Icon(
                                Icons.refresh,
                                color: Colors.white,
                                size: 30.0,
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
                              color: Colors.grey.shade700.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(30.0),
                              border:Border.all(color: Colors.orange.shade600,width: 2.0)
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                    children: [
                                      Text(
                                        'Time :',
                                        style: TextStyle(
                                          color: Colors.white,
                                       fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      SizedBox(width: 4,),
                                      Text(
                                        '$second',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0
                                        ),
                                      ),
                                    ]
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  Icons.timer_outlined,
                                  color: Colors.white,
                                  size: 30.0,
                                ),]
                          ),
                        ),
                      ],
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
