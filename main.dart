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
  // null값도 가질 수 있는 변수 선언
  // ?를 붙여주면 됨
  String? yea = "yea";
  yea = null;
  // yea?.~~
  // 는 yea가 null이 아니면 ~~ 하기 로 쓸 수 있음
  print(yea);
  //final변수는 수정할 수 없음
  final chan = "final";
}
