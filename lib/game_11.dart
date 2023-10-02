class Game{
  final String hiddenCardPath='assets/images/pink.jpeg';
  final int cardCount=14;

  final List<String> card_list=[
    'assets/images/fish1.jpeg',
    'assets/images/fish2.jpeg',
    'assets/images/fish3.jpeg',
    'assets/images/fish4.jpeg',
    'assets/images/fish5.jpeg',
    'assets/images/fish6.jpeg',
    'assets/images/fish7.jpeg',
    'assets/images/fish2.jpeg',
    'assets/images/fish4.jpeg',
    'assets/images/fish6.jpeg',
    'assets/images/fish1.jpeg',
    'assets/images/fish3.jpeg',
    'assets/images/fish5.jpeg',
    'assets/images/fish7.jpeg',
  ];
  List<Map<int,String>> matchecheck=[

  ];
  List<String>? gameImg;

  void initGame(){
    gameImg =List.generate(cardCount, (index) => hiddenCardPath );
  }
}