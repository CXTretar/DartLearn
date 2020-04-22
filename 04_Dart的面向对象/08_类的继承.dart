main(List<String> args) {
  
  final b1 = Boy("jack", 18);

  print(b1.toString());

}

class Person {
  int age;
  
  Person(this.age);
}

class Boy extends Person {
  String name;
  
  // 在初始化列表里面调用 super 方法
  Boy(this.name, int age) : super(age);

  @override
  String toString() {
    // TODO: implement toString
    return "$name, $age";
  }
}