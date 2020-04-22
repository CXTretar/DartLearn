main(List<String> args) {
  var p = Person("jack", age: 18);
  print(p.toString());

  var p1 = Person("jack");
  print(p1.toString());

  var p2 = Person2("rose", age: 19);
  print(p2.toString());
}

class Person {
  final String name;
  final int age;

  // 这种写法是错误的
  // Person(this.name) {
  //  this.age = 10;
  // }

  // 正确的写法
  Person(this.name, {int age}) : this.age = age ?? 10 {}

  @override
  String toString() {
    // TODO: implement toString
    return "$name $age";
  }
}
// 写法2不推荐,因为在 {} 里面只能写赋值语句,不能写类似三元运算符之类的语句
class Person2 {
  final String name;
  final int age;

  Person2(this.name, {this.age = 10});

  @override
  String toString() {
    // TODO: implement toString
    return "$name $age";
  }
}
