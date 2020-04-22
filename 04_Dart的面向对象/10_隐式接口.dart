main(List<String> args) {
  
}

// dart 中没有哪一个关键字是来定义接口的, 类似 interface protocol
// 默认情况下所有的类都是隐式接口
// dart 只支持单继承
// 当将一个类当做接口使用时,那么使用这个接口的类必须实现这个接口中所有的方法

class Runner {
  void running() {

  }
}

class Flyer {
  void flying() {

  }
}

class Person {
  void eating() {

  }
}

class SuperMan extends Person implements Runner, Flyer {
  @override
  void running() {
    // TODO: implement running
    // implements 不能使用 super
    // super.running()
  }

  @override
  void flying() {
    // TODO: implement flying
  }
  
  @override
  void eating() {
    // TODO: implement eating
    // 继承可以使用 super
    super.eating();
  }
}