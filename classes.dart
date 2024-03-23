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

class Player4 {
  String name;
  int xp;
  String team;
  int age;

  Player4({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  // Named Constructors
  // :를 넣음으로써 너는 Dart에게 여기서 Player객체를 초기화하겠다
  // 나머지 두 인자는 입력받아 사용
  Player4.createRedPlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;
}

// api를 통해 json 데이터를 받아와 클래스를 만들 때는 아래와 같은 방식으로 함
class Player5 {
  final String name;
  int xp;
  String team;

  Player5.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson["xp"],
        team = playerJson["team"];

  void say() {
    print("hello im $name");
  }
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

  var player4 = Player4.createRedPlayer(name: "yeachan", age: 25);
  print(player4.xp);

  var apiData = [
    {
      "name": "yeachan",
      "team": "red",
      "xp": 123,
    },
    {
      "name": "yeachan",
      "team": "red",
      "xp": 123,
    },
    {
      "name": "yeachan",
      "team": "red",
      "xp": 123,
    },
  ];
// json 데이터를 가지고 클래스 선언
  apiData.forEach((playerJson) {
    var player5 = Player5.fromJson(playerJson);
    player5.say();
  });

  //Cascade Notation
  // ..에서 .로 player4_2를 대신해서 사용 대신 이전에 ;를 사용하지 않고 이어서 써야함
  var player4_2 = Player4(name: "yeachna", xp: 123, team: "red", age: 25)
    ..name = "yechan2"
    ..xp = 321
    ..team = "white"
    ..age = 26;
  print(player4_2.name);
}
