import 'package:flutter/material.dart';

class Sliding extends StatefulWidget {
  const Sliding({super.key});

  @override
  State<Sliding> createState() => _SlidingState();
}

class _SlidingState extends State<Sliding> {
  int tries=0;


  final List<String> _item = List.generate(9, (index) => index==0 ? '': index.toString());

  _changeIndex( int i ){
    int emptyIndex= _item.lastIndexOf('');
    int previousItem= i - 1;
    int nextItem = i + 1;
    int previousRow= i - 4;
    int nextRow = i + 4;

    setState(() {
      if(emptyIndex == previousItem){

        _item[previousItem]=_item[i];
        _item[i]= '';

      }else if(emptyIndex == nextItem){
        _item[nextItem]=_item[i];
        _item[i]= '';

      }else if(emptyIndex == previousRow){
        _item[previousRow]=_item[i];
        _item[i]= '';

      }else if (emptyIndex == nextRow){
        _item[nextRow]=_item[i];
        _item[i]= '';

      }


    });

  }
  @override
  void initState() {
    // _item.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.tealAccent.shade700,
                  Colors.blue.shade900,
                  Colors.grey,
                  Colors.purple,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,


              )

          ),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              Text(''
                  'Puzzle',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                  color: Colors.white,


                ),),
              SizedBox(
                height: 20.0,
              ),

              Text('Moves : $tries',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white54,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 400.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Column(
                      children: [
                        SizedBox(
                            height: 300.0,
                            width: 300.0,
                            child: AspectRatio(
                                aspectRatio: 1,
                                child: GridView.count(
                                  crossAxisSpacing: 8.0,
                                  crossAxisCount: 4,
                                  mainAxisSpacing: 8.0,
                                  children: [
                                    for(int i=0;i<9;i++)
                                      InkWell(
                                        onTap: (){
                                          setState(() {
                                            tries++;
                                            _changeIndex(i);


                                          });


                                        },
                                        child: Container(


                                          child: Center(
                                            child: Text(
                                              '${_item[i]}',
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color:_item[i].isEmpty? Colors.white : Colors.deepPurple.withOpacity(0.25),
                                            shape: BoxShape.circle,

                                          ),
                                        ),
                                      ),

                                  ],
                                )
                            )
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          height: 50.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: MaterialButton(
                              child: Text('Shuffle'),

                              onPressed:(){
                                setState(() {
                                  _item.shuffle();
                                });

                              }),
                        ),

                      ],
                    ),
                    SizedBox(
                      width: 20.0,
                    ),

                  ],
                ),
              ),




            ],
          ),
        ),
      ),


    );
  }


}
