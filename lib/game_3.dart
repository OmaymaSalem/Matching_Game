class Game{
  final String hiddenCardPath='assets/images/teal.jpeg';
  final int cardCount=12;

  final List<String> card_list=[
    'assets/images/flower1.jpeg',
    'assets/images/flower2.jpeg',
    'assets/images/flower3.jpeg',
    'assets/images/flower4.jpeg',
    'assets/images/flower7.jpeg',
    'assets/images/flower8.jpeg',
    'assets/images/flower8.jpeg',
    'assets/images/flower7.jpeg',
    'assets/images/flower2.jpeg',
    'assets/images/flower3.jpeg',
    'assets/images/flower4.jpeg',
    'assets/images/flower1.jpeg',

  ];
  List<Map<int,String>> matchecheck=[

  ];
  List<String>? gameImg;

  void initGame(){
    gameImg =List.generate(cardCount, (index) => hiddenCardPath );
  }
}