// String sayHello(String name) {
//   return "Hello $name nice to meet you!";
// }
// 위의 코드를 아래처럼 단축하여 사용 가능
String sayHello(String name) => "Hello $name nice to meet you!";

// Named Parameters를 사용하여 인자를 더 간편하게 넘길 수 있음!
// 딕셔너리 느낌으로 넘겨 순서는 상관 안하고 지정해서 값을 넘기는 느낌? ㅇㅇ
// null을 처리하는 방법은 default값을 지정하거나 required를 사용하는 법 2개가 있음
String sayHello2(
        {required String name, int age = 0, String coutry = "korea"}) =>
    "$name $age $coutry";

void main() {
  print(sayHello('yeachan'));
  print(sayHello2(
    age: 25,
    coutry: 'korea',
    name: 'yeachan',
  ));
}
