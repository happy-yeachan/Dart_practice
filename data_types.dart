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
}
