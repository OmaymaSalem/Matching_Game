

import 'package:first_project/home_screen.dart';
import 'package:first_project/matching_2.dart';
import 'package:first_project/matching_31.dart';
import 'package:flutter/material.dart';

class Easy extends StatefulWidget {
  const Easy({super.key});

  @override
  State<Easy> createState() => _EasyState();
}

class _EasyState extends State<Easy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Colors.lightGreen.shade300,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.purple.shade300,

            ]
          )
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

                   Center(
                     child: Padding(
                       padding: EdgeInsets.only(
                         top:100.0,
                       ),
                       child: Container(
                         height: 200.0,
                         width: 600.0,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30.0),
                           color: Colors.lightGreen,
                           boxShadow: [BoxShadow(

                             blurRadius: 2.0,
                             spreadRadius: 7.0,
                             color: Colors.black26,
                           )]

                         ),
                         child: Center(
                           child: TextButton(
                             onPressed: (){
                               Navigator.push(context,
                                   MaterialPageRoute(builder:(context){
                                     return Matching33();
                                   } ));
                             },
                             child: Text(
                               ' Level 1',
                               style: TextStyle(
                                 fontSize: 60.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                    SizedBox(
                      height: 100.0,
                    ),
                    Center(
                child: Container(
                    height: 200.0,
                    width: 600.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.purple,
                        boxShadow: [BoxShadow(

                          blurRadius: 2.0,
                          spreadRadius: 7.0,
                          color: Colors.black26,
                        )]

                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder:(context){
                                return CardScreen();
                              } ));
                        },
                        child: Text(
                          ' Level 2',
                          style: TextStyle(
                            fontSize: 60.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 70.0,
                width: 200.0,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context){
                        return HomeScreen();
                      } ));
                }, child: Text(
                  ' Close',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                     color: Colors.black,
                  ),
                )),
              )
            ],

          ),
        ),
      ),

    );
  }
}
