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

void main() {
  var player = Player();
  print(player.age);
  player.say();
}
