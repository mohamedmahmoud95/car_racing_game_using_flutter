class User{
  String username;
  String id;
  int score;
  int level;
  int lives;

  User({
    required this.username,
    required this.id,
    required this.level,
    required this.score,
    required this.lives,

  });
}

User sampleUser1 = User (username: 'Nada123', id: 'p1', score: 0,  level: 1, lives: 3);
User sampleUser2 = User (username: 'Anas1',   id: 'p2', score: 25, level: 3, lives: 3);
User sampleUser3 = User (username: 'Alaa1',   id: 'p3', score: 50, level: 2, lives: 3);

