main(List<String> args) {
  final p = Person();

  // dart 中没有 private public protected package 之类的关键字
  // 当前模块内访问 _xxx, 例如 _phone 就只能在当前模块(文件)内访问
  // 直接访问属性,和点语法不同
  p.name = "jack";
  print(p.name);

  // 通过getter和setter访问
  p.setName = "rose";
  print(p.getName);
}

class Person {
  String name;
  String _phone;

  // setter
  set setName(String name) {
    this.name = name;
    print("set name = $name");
  }

  // getter
  String get getName {
    print("get name = $name");
    return name;
  }
  
  // 箭头函数写法
  // set setName(String name) => this.name = name;
  // get getName => name;
}