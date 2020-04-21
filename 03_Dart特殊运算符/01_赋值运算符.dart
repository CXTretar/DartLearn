main(List<String> args) {
  // ??=
  // 1.当原来的变量有值时,那么 ??= 不执行
  // 2.当原来的变量没有值时,那么将值赋值给这个变量
  var name = "jack";
  name ??= "rose";
  print(name);

  // ??
  // 1.当前面的数据有值时,那么就使用 ?? 前面的数据
  // 2.当前面的数据为 null 时,那么就使用 ?? 后面的数据
  var name1 = "jack";
  var temp = name1 ?? "rose";
  print(temp);
  temp = null ?? "rose";
  print(temp);
}
