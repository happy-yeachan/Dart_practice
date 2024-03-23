// Inheritance
// 상속을 하고 super를 이용해 부모 클래스의 생성자를 호출할 수 있다.

class Human {
  final String name;
  Human({required this.name});

  void say() {
    print("hello im $name");
  }
}

enum Team { red, blue }

class Player extends Human {
  final Team team;
  Player({
    required this.team,
    required String name,
  }) : super(name: name);

  @override
  void say() {
    super.say();
    print("im ${team} ");
  }

  void walk() {
    print("I'm walking!");
  }
}

void main() {
  var player = Player(team: Team.red, name: "yeachan");
  player.say();
}
