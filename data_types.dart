void main() {
  // num은 int와 double의 부모 클래스!! 미친
  num a = 1;
  a = 1.1; //이런 식으로 가능함

  // list 선언 방식
  var givemefive = true;
  var numbers = [1, 2, 3, 4];
  List<int> numbers2 = [
    1,
    2,
    3,
    4,
    if (givemefive) 5, //안에 조건에 따라 들어갈 요소도 지정 가능!
  ];
  numbers.add(2);

  // String Interpolation - text에 변수 추가 법
  // $를 사용하면 손쉽게 가능
  var t = "yeachan";
  var age = 10;
  print("hello my name is $t , I'm ${age + 15} years old.");

  //Collection For
  // 리스트 안에서 간단히 다른 리스 값을 가져와 다룰 수 있음!!
  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "old $friend",
  ];
  print(newFriends);

  //Maps
  // 딕셔너리라고 보면 됨 ㅇㅇ 사용법도 비슷한듯?
  var map = {
    "name": "yeachan",
    "age": 12,
  };
  List<Map<String, Object>> players = [
    {'name': 'yeachan', 'age': 25},
    {'name': 'juchan', 'age': 26},
  ]; // 이 방법은 비추래 ㅇㅅㅇ

  //Sets
  // 중복이 없는 리스트라고 생각하면 됨 튜블임 ㅇㅇ
  Set<int> numbers3 = {1, 2, 3, 4, 5};
  // var numbers3 = ~ 로도 선언 가능
  numbers3.add(1);
  numbers3.add(1);
  numbers3.add(1);
  print(numbers3); // 1을 아무리 add하도 무조건 하나!
}
