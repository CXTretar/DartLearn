main(List<String> args) {
  test((name) {
    print(name);
  });

  test1((num1, num2) {
    print(num1 + num2);
    return num1 + num2;
  });

  test3((num1, num2) {
    print(num1 + num2);
    return num1 + num2;
  });

  var demo1 = demo();
  demo1(20, 30);
  print(demo1(20, 30));
}

// 封装test函数,要求:传入一个函数
void test(Function foo) {
  foo("jack");
}

void test1(int foo(int num1, int num2)) {
  foo(20, 30);
}

// 使用 typedef 增强代码可读性
typedef Calculate = int Function(int num1, int num2);
void test3(Calculate foo) {
  foo(30, 30);
}

// 返回类型为函数的函数
Calculate demo() {
  return (num1, num2) {
    return num1 * num2;
  };
}
