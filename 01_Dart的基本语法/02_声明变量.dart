main(List<String> args) {
  // 1.明确的声明
  String name = "jack";

  // 2.类型推导
  // 类型推导的方式虽然没有明确的指定变量的类型，但是变量是有自己的明确类型

  // 2.1 var 声明变量
  var age = 20;
  age = 30;

  // 2.2 final 声明常量
  final height = 1.74;

  // 2.3 const 声明常量
  const address = "厦门市";

  // 2.4 final 和 const 区别
  // const 必须赋值 常量值（编译期间需要有一个确定的值）
  // final 可以通过计算、函数获取一个值（运行期间来确定一个值）
  // const date1 = DateTime.now();
  final date2 = DateTime.now();

   // final 用法更多
   // 比较 p1 p2 p3 p4
  final p1 = Person("jack");
  final p2 = Person("jack");
  print("final ${identical(p1,p2)}");
  const p3 = Person2("jack");
  const p4 = Person2("jack");
  const p5 = Person2("rick");
  print("const ${identical(p3,p4)}");
  print("const ${identical(p4,p5)}");
}

class Person {
  String name;
  Person(String name) {
    this.name = name;
  }
}

class Person2 {
  final String name;
  const Person2(this.name);
}