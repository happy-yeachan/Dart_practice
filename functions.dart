// String sayHello(String name) {
//   return "Hello $name nice to meet you!";
// }
// 위의 코드를 아래처럼 단축하여 사용 가능
String sayHello(String name) => "Hello $name nice to meet you!";

// Named Parameters를 사용하여 인자를 더 간편하게 넘길 수 있음!
// 딕셔너리 느낌으로 넘겨 순서는 상관 안하고 지정해서 값을 넘기는 느낌? ㅇㅇ
// null을 처리하는 방법은 default값을 지정하거나 required를 사용하는 법 2개가 있음
String sayHello2(
        {required String name, int age = 0, String country = "korea"}) =>
    "$name $age $country";

// Optional Positional Parameters
// ?를 사용해 있으면 그 값을 쓰고 없으면 지정된 값을 쓰게도 할 수 있음
// 근데 잘 안씀 ㅋㅋ named parameters를 더 잘 쓴다고 함
String sayHello3(String name, int age, [String? country = 'korea']) =>
    "$name $age $country";

// QQ Operator
String capitalizeName(String? name) =>
    // name != null ? name.toUpperCase() : 'what';
    // 위 코드를 아래처럼 쓸 수 있음 ㄷㄷ
    name?.toUpperCase() ?? 'what';
void main() {
  print(sayHello('yeachan'));
  print(sayHello2(
    age: 25,
    country: 'korea',
    name: 'yeachan',
  ));
  print(sayHello3("yeachan", 25));
  print(capitalizeName("yeachan"));
  print(capitalizeName(null));

  String? name;
  // name이 null이면 yeachan으로 한다를 이렇게 구현 할 수 있음!!
  name ??= 'yeachan';
}
