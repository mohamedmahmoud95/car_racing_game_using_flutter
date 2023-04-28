class Gift{
  String name;
  String imageURL;
  double addedValueToScore;
  bool addOrSub; //will this gift increase or decrease the player's score
  double leftPosition;
  double topPosition;

  Gift({required this.name, required this.imageURL, required this.addedValueToScore, required this.addOrSub, required this.topPosition, required this.leftPosition});
}

Gift health = Gift(name: 'health', imageURL: "assets/health.png",    addedValueToScore: 10,  addOrSub: true, leftPosition: 25,topPosition: 25);
Gift damage = Gift(name: 'damage', imageURL: "assets/dangerous.png", addedValueToScore: 10, addOrSub: false, leftPosition: 125, topPosition: 60);


