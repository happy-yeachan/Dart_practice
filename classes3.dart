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

// Mixins
//Mixin은 생성자가 없는 클래스를 의미한다.
//Mixin 클래스는 상속을 할 때 extends를 하지 않고 with 를 사용한다.
//Mixin의 핵심은 여러 클래스에 재사용이 가능하다는 점이다.
class Tall_lol {
  final double tall = 190.00;
}

class Strong_lol {
  final double str = 99.99;
}

class Quick {
  final double speed = 99.1;
}

class Adult with Tall_lol {}

//extends와 차이점은 extend를 하게 되면 확장한 그 클래스는 부모 클래스가 되지만 with는 부모의 인스턴스 관계가 된다. 단순하게 mixin 내부의 프로퍼티를 갖고 오는 거라고 생각하면 쉽다.
void main() {
  var player = Player(team: Team.red, name: "yeachan");
  player.say();
}
