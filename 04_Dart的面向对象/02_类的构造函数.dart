main(List<String> args) {
  var p = Person.withNameAgeHeight("jack", 18, 1.74);
  print(p.toString());

  var p1 = Person.fromMap({
    "name" : "jack",
    "age" : 19,
    "height" : 2.74,
  });

  print(p1.toString());
  // 父类应用指向子类对象
  // Object 和 dynamic 都是明确声明,  var 是推导类型
  Object obj = "jack";

  // Object 调用方法,编译时会报错
  // print(obj.substring(1));
  // dynamic 调用方法,编译时不会报错,但是运行时会存在安全隐患
  dynamic dyc = "jack";
  print(dyc.substring(1));
}

class Person {
  String name;
  int age;
  double height;

  Person(this.name, this.age);

  // 命名构造函数
  Person.withNameAgeHeight(this.name, this.age, this.height);

  Person.fromMap(Map<String, dynamic> map) {  

    this.name = map["name"];
    this.age = map["age"];
    this.height = map["height"];
  }

  @override
  String toString() {
    // TODO: implement toString
    return "$name $age $height";
  }

}
