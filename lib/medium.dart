import 'package:first_project/home_screen.dart';
import 'package:first_project/matching_21.dart';
import 'package:first_project/matching_3.dart';
import 'package:flutter/material.dart';

class Medium extends StatefulWidget {
  const Medium({super.key});

  @override
  State<Medium> createState() => _MediumState();
}

class _MediumState extends State<Medium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue.shade300,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.pink.shade300,

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
                        color: Colors.pink,
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
                                return Matching21();
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
                      color: Colors.blue,
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
                              return Matching();
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
