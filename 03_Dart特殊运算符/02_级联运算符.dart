main(List<String> args) {
  
  var p = Person();
  p.name = "jack";
  p.run();
  p.eat();
  
  // 级联运算符
  var p1 = Person()..name = "jack"..eat()..run();
  var p2 = Person()
  ..name = "name"
  ..eat()
  ..run();
}

class Person {
  String name;

  void run() {
    print("running");
  }

  void eat() {
    print("eating");
  }

}