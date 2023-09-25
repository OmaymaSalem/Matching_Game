class Game{
  final String hiddenCardPath='assets/images/purple.jpeg';
  final int cardCount=8;

  final List<String> card_list=[
    'assets/images/apple.jpeg',
    'assets/images/banana.jpeg',
    'assets/images/grap.jpeg',
    'assets/images/orange.jpeg',
    'assets/images/banana.jpeg',
    'assets/images/apple.jpeg',
    'assets/images/orange.jpeg',
    'assets/images/grap.jpeg',

  ];
  List<Map<int,String>> matchecheck=[

  ];
  List<String>? gameImg;

  void initGame(){
    gameImg =List.generate(cardCount, (index) => hiddenCardPath );
  }
}