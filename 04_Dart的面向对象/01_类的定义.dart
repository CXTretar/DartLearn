main(List<String> args) {
  
  var p = Person("jack", 18);
  print(p.name);
  print(p.age);

}

class Person {
  String name;
  int age;

  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  // 语法糖写法
  Person(this.name, this.age);
}