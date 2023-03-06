/* 

  팩토리 생성자

  항상 자신의 새 인스턴스를 만들지 않는 생성자를 구현할 때 factory를 사용.
  예를 들어 팩토리 생성자는 캐싱된 인스턴스를 반환하거나 하위 유형의 인스턴스를 반환.

*/

//1. 일반 생성자로 만드는게 아니라 특정 데이터를 집어넣으면 (json 파일을 받으면 파싱을 해야하는데 생성자에 매개변수를 각각 넣는 대신
//DTO. dto = DTO.fromJson(json데이터); 하면 dto를 리턴)
//어떠한 가공전 데이터를 이용해서 객체를 뽑아낸다.

//2. 해당 클래스의 하위 클래스들을 조건에 맞게 생산

class MyClass {
  final String name;

  const MyClass(this.name);

  factory MyClass.fromName(String name) {
    if (name == 'foo') {
      return FooClass();
    } else if (name == 'bar') {
      return BarClass();
    } else {
      return MyClass(name);
    }
  }
}

class FooClass extends MyClass {
  const FooClass() : super('foo');

  @override
  String toString() {
    // TODO: implement toString
    return "푸우";
  }
}

class BarClass extends MyClass {
  const BarClass() : super('bar');
}

void main(List<String> args) {
  var myObj1 = MyClass('test');
  var myObj2 = MyClass.fromName('foo'); //타입은 MyClass인데 객체는 new FooClass();

  print(myObj2 as FooClass);
}
