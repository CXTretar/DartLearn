main(List<String> args) {
  sayHello1("jack");
  sayHello2("jack", 18);
  sayHello3("jack", height: 1.74, age: 18);
}

// 必选参数: 必须传并且不能有默认值
void sayHello1(String name) {
  print("$name sayHello");
}

// dart 中没有函数的重载
// 可选参数: 1.位置可选参数 2.命名可选参数  
// 可选参数可以有默认值
// 位置可选参数: [int age, double height]
// 实参和形参在进行匹配时,是根据位置进行匹配
void sayHello2(String name, [int age, double height = 1.88]) {
  print("$name $age $height sayHello");
}

// 命名可选参数 {int age, double height}
// 实参和形参在进行匹配时,是根据命名进行匹配
void sayHello3(String name, {int age = 10, double height}) {
  print("$name $age $height sayHello");
}