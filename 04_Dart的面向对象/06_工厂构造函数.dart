main(List<String> args) {
  const p1 = Person1("jack");
  const p2 = Person1("jack");

  print(identical(p1,p2));

  final p3 = Person.withName("jack");
  final p4 = Person.withName("jack");
  final p5 = Person.withPhone("123456");
  final p6 = Person.withPhone("123456");

  print(identical(p3,p4));
  print(identical(p5,p6));

}

// 普通构造函数会自动返回创建出来的对象,不能手动返回
// 工厂构造函数需要手动的返回一个对象

// 需求:
// 1. 传入的 name 相同时返回的对象是同一个
// 2. 传入的 phone 相同时返回的对象是同一个

// 这种写法只能满足其中一种需求,不能同时满足
class Person1 {
  final String name;
  final String phone = "123123";

  const Person1(this.name);
}

// 工厂构造函数写法
class Person {
  String name;
  String phone;

  // static 修饰表示 类对象 调用
  static final Map<String, Person> _nameCache = {};
  static final Map<String, Person> _phoneCache = {};
  
  // 使用 factory 会导致默认的构造函数消失,需要手动创建
  factory Person.withName(String name) {
    if (_nameCache.containsKey(name)) {
      return _nameCache[name];
    }else {
      final p = Person(name, "default");
      _nameCache[name] = p;
      return p;
    }
  }

  factory Person.withPhone(String phone) {
    if (_nameCache.containsKey(phone)) {
      return _nameCache[phone];
    }else {
      final p = Person("default", phone);
      _nameCache[phone] = p;
      return p;
    }
  }

  Person(this.name, this.phone);

}