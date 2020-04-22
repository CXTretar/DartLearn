main(List<String> args) {
  // dart 的 Map 也是抽象类,但是通过工厂构造方法可以实例化
  final map = Map();
  print(map.runtimeType);

  final s = Shape();
}

// 抽象类可以只放函数的声明, 不放方法的实现
// 注意一: 抽象类不能实例化
abstract class Shape {
  int getArea();
  String getInfo() {
    return "形状";
  }

  // 通过工厂构造方法,返回对象
  factory Shape() {
    return null;
  }

  // external 关键字的作用: 将方法的声明和方法的实现分离
  // external factory Map();
  // @patch: 补丁,可以针对不同的平台做不同的实现

}

// 注意二: 继承于抽象类之后,必须实现抽象类的抽象方法
// class Rectangle extends Shape {
//   @override
//   int getArea() {
//     // TODO: implement getArea
//     return 16;
//   }

// }
