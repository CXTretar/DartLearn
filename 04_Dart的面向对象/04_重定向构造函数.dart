main(List<String> args) {
  var p = Person("jack");
  print(p.age);
}

class Person {
  String name;
  int age;

  // Person(this.name) : age = 10;

  // 构造函数的重定向 (构造函数之间的相互调用)
  Person(String name) : this._internal(name, 11);

  Person._internal(this.name, this.age);

}