main(List<String> args) {
  
  Person.phone = "132456";
  print(Person.phone);
  Person.running();
}

class Person {
  // 成员属性
  String name;

  // 静态属性(类属性)
  static String phone;

  // 对象方法
  void eating() {
    print("eating");
  }

  // 静态方法(类方法)
  static void running() {
    print("running");
  }

}