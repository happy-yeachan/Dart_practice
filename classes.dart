// 클래스 선언은 이런 식으로 파이썬이랑 비슷한듯 ㅇㅇ
// 근데 this.name은 잘 안쓴다.
// 예외적으로 지역변수와 변수명이 겹치면 구분을 위해 쓰기도 함
class Player {
  final String name = "yeachan";
  int age = 25;

  void say() {
    print("hello im $name");
  }
}

// 파이썬의 __init__이랑 비슷한 느낌 ㅇㅇ
class Player2 {
  late final String name;
  late int age;

  // Player2(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }
  // 위 코드는 아래와 같이 쓸 수 있음
  Player2(this.name, this.age);
  void say() {
    print("hello im $name");
  }
}

// Named Constructor Parameters
// 순서를 기억하지 않아도 이름을 지정하여 파라미터를 넘길 수 있음
class Player3 {
  final String name;
  int xp;
  String team;
  int age;

  Player3({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });
}

void main() {
  var player = Player();
  print(player.age);
  player.say();

  var player2 = Player2("yeachan", 25);
  print(player2.name);

  var player3 = Player3(
    name: "yeachan",
    xp: 1200,
    team: "school",
    age: 25,
  );
  print(player3.name);
}
