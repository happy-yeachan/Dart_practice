// String sayHello(String name) {
//   return "Hello $name nice to meet you!";
// }
// 위의 코드를 아래처럼 단축하여 사용 가능
String sayHello(String name) => "Hello $name nice to meet you!";
void main() {
  print(sayHello('yeachan'));
}
