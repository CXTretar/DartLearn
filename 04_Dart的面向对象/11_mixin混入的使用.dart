main(List<String> args) {
  final p = SuperMan();
  p.running();
  p.flying();
  p.eating();
}

mixin Runner {
  void running() {
    print("Runner running");
  }
}

mixin Flyer {
  void flying() {
    print("Flyer flying");
  }
}

class Person {
  void eating() {
    print("Person eating");
  }
}

// 1.定义可混入的类时,不能使用 class 要使用 mixin 以及 with 进行混入, 这时可以不实现方法
class SuperMan extends Person with Runner, Flyer {
  void running() {
    print("SuperMan running");
  }

  @override
  void eating() {
    // TODO: implement eating
    // 继承可以使用 super
    super.eating();
  }
}
