/*

  List 타입의 대표적 메소드
  add: 요소를 추가한다.
  remove: 요소를 제거한다.
  clear: 모든 요소를 제거한다.
  insert: 인덱스를 통해 요소를 추가한다.
  indexOf: 요소의 인덱스를 반환한다.
  sort: 요소를 정렬한다.
  shuffle: 요소를 랜덤하게 섞는다.
  reverse: 요소를 역순으로 정렬한다.
  join: 요소를 문자열로 합친다.
  split: 문자열을 요소로 분리한다.
  forEach: 요소를 반복한다.
  map: 요소를 변환한다.
  where: 조건에 맞는 요소를 반환한다. (filter)
  any: 조건에 맞는 요소가 있는지 확인한다.
  every: 모든 요소가 조건에 맞는지 확인한다.
  isEmpty: 요소가 비어있는지 확인한다.
  isNotEmpty: 요소가 비어있지 않은지 확인한다.
  contains: 요소가 포함되어 있는지 확인한다.

 */

void main(List<String> args) {
  List<int> tempList1 = [3, 2, 1];

  // 문제 1. add를 이용해서 4를 추가하고 출력하시오.
  tempList1.add(4);
  print("문제1:" + tempList1.toString()); //[3,2,1,4]
  // 문제 2. remove를 이용해서 2를 제거하고 출력하시오.
  tempList1.remove(2);
  print("문제2:" + tempList1.toString()); //[3,1,4]
  // 문제 3. insert를 이용해서 1번 인덱스에 4를 추가하고 출력하시오.
  tempList1.insert(1, 4);
  print("문제3:" + tempList1.toString()); //[3,4,1,4]
  // 문제 4. indexOf를 이용해서 3의 인덱스를 출력하시오.
  print("문제4:" + tempList1.indexOf(3).toString()); //0
  // 문제 5. sort를 이용해서 tempList1을 정렬하고 출력하시오.
  tempList1.sort();
  print("문제5:" + tempList1.toString()); //[1,3,4,4]
  // 문제 6. shuffle를 이용해서 tempList1을 랜덤하게 섞고 출력하시오.
  tempList1.shuffle();
  print("문제6:" + tempList1.toString()); //[1,4,4,3]
  // 문제 7. reversed를 이용해서 tempList1을 역순으로 정렬하고 출력하시오.
  print("문제7:" + List.from(tempList1.reversed).toString()); //위의 반대순서
  // 문제 8. join을 이용해서 tempList1을 문자열로 합치고 출력하시오.
  print("문제8:" + tempList1.join(""));
  // 문제 9. split을 이용해서 문자열을 tempList1로 분리하고 출력하시오.
  String tempStr = tempList1.join();
  List<String> tempList2 = tempStr.split("");
  print("문제9:" + tempList2.toString());
  // 문제 10. map을 이용해서 tempList1의 요소를 2배로 만들고 출력하시오.
  // power(dynamic item) {
  //   return item * 2;
  // }

  // List powerL = power(tempList1);
  // print(powerL);

  print("문제10:" + tempList1.map((e) => e * 2).toString());
  // 문제 11. where를 이용해서 tempList1의 짝수만 출력하시오.
  List<int> evenN = tempList1.where((e) => e % 2 == 0).toList();
  print("문제11:" + "${evenN}");
  // 문제 12. forEach를 이용해서 tempList1의 요소를 반복하고 출력하시오.
  tempList1.forEach((element) {
    print("문제12:" + element.toString());
  });
  // 문제 13. any를 이용해서 tempList1에 3이 있는지 확인하고 출력하시오.
  String any3 = tempList1.any((e) => e == 3).toString();
  print("문제13:" + any3); //true
  // 문제 14. every를 이용해서 tempList1의 모든 요소가 3보다 작은지 확인하고 출력하시오.
  print("문제14:" + tempList1.every((e) => e < 3).toString());
  // 문제 15. isEmpty를 이용해서 tempList1이 비어있는지 확인하고 출력하시오.
  print("문제15:" + tempList1.isEmpty.toString());
  // 문제 16. contains를 이용해서 tempList1에 3이 있는지 확인하고 출력하시오.
  print("문제16:" + tempList1.contains(3).toString());
}
