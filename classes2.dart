// abstract class 추상 클래스
// 다른 클래스들이 직접 구현 해야하는 메소드들을 모아놓은 일종의 청사진
// 특정 메소드를 구현하도록 강제함
// 그렇게 잘 쓰이지는 않음

abstract class Human {
  void walk();
}

class Player extends Human {
  final String name = "yeachan";
  int age = 25;

  void say() {
    print("hello im $name");
  }

  void walk() {
    print("I'm walking!");
  }
}

void main() {
  var player = Player();
  player.walk();
}
