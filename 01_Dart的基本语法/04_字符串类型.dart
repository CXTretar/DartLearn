main(List<String> args) {
  // 1. 定义字符串
  var str1 = 'abc';
  var str2 = "efg";
  var str3 = """ 
qwe
rty
uio
""";

// 2. 字符串和表达式进行拼接
  var name = "jack";
  var age = 18;
  var height = 1.74;

  // 注意: ${变量}, 那么{}可以省略
  var message1 = "my name is $name, age is $age, height is $height";
  var message2 = "my name is $name, name type is ${name.runtimeType}";

  print(message1);
  print(message2);
}
