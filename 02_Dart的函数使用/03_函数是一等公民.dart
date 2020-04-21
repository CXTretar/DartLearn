main(List<String> args) {

  test(foo);
  // 传入匿名函数
  test((){
    print("匿名函数被调用");
  });
  
  // 传入箭头函数
  // 注意条件:函数体只有一行代码
  // 不能使用{}来实现多行,与JS语法不同
  // 多行就使用匿名函数写法
  test(()=> print("箭头函数被调用"));
}

// 函数可以作为另外一个函数的参数
void test(Function foo) {
  foo();
}

void foo() {
  print("foo 函数被调用");
}