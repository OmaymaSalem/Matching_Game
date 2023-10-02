class Game{
  final String hiddenCardPath='assets/images/question.png';
  final int cardCount=10;

  final List<String> card_list=[
    'assets/images/drumpt.jpeg',
    'assets/images/drumpt2.jpeg',
    'assets/images/gitar.jpeg',
    'assets/images/piano.jpeg',
    'assets/images/trumpet.jpeg',
    'assets/images/trumpet.jpeg',
    'assets/images/drumpt.jpeg',
    'assets/images/gitar.jpeg',
    'assets/images/drumpt2.jpeg',
    'assets/images/piano.jpeg',
  ];
  List<Map<int,String>> matchecheck=[

  ];
  List<String>? gameImg;

  void initGame(){
    gameImg =List.generate(cardCount, (index) => hiddenCardPath );
  }
}