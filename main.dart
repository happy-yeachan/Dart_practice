void main() {
  print("hello world");
  // 타입 지정 선언과 var 선언 둘 다 가능
  // var는 보통 지역변수 선언시 사용
  var i = "hello";
  String j = "bye";
  i = "yeachan";

  // 다이나믹 형식으로 선언하면 모든 타입을 가질 수 있음
  // var만 사용하여 선언하면 다이나믹 형식을 가짐
  // dynamic으로도 선언 가능
  var d;
  dynamic dd;
  d = 2;
  d = "yes";
  print(i);
}
