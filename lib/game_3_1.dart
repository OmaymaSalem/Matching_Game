class Game{
  final String hiddenCardPath='assets/images/brownquest.png';
  final int cardCount=6;

  final List<String> card_list=[
    'assets/images/bird1.jpeg',
    'assets/images/bird2.jpeg',
    'assets/images/bird3.jpeg',
    'assets/images/bird3.jpeg',
    'assets/images/bird1.jpeg',
    'assets/images/bird2.jpeg',


  ];
  List<Map<int,String>> matchecheck=[

  ];
  List<String>? gameImg;

  void initGame(){
    gameImg =List.generate(cardCount, (index) => hiddenCardPath );
  }
}