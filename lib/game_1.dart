class Game{
  final String hiddenCardPath='assets/images/brownquest.png';
  final int cardCount=16;

  final List<String> card_list=[
    'assets/images/cat.jpeg',
    'assets/images/cow.jpg',
    'assets/images/dog.jpeg',
    'assets/images/fox.png',
    'assets/images/horse1.jpeg',
    'assets/images/lion.jpeg',
    'assets/images/panda.jpeg',
    'assets/images/sheep.jpeg',
    'assets/images/panda.jpeg',
    'assets/images/horse1.jpeg',
    'assets/images/fox.png',
    'assets/images/cow.jpg',
    'assets/images/dog.jpeg',
    'assets/images/lion.jpeg',
    'assets/images/cat.jpeg',
    'assets/images/sheep.jpeg',
  ];
  List<Map<int,String>> matchecheck=[

  ];
  List<String>? gameImg;

  void initGame(){
    gameImg =List.generate(cardCount, (index) => hiddenCardPath );
  }
}