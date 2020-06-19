import 'dart:isolate';

main(List<String> args) {
  print("------- start -------");
  // 单独开启一条线程运行
  Isolate.spawn(calc, 100);

  print("-------  end  -------");
}

void calc(int count) {
  var total = 0;
  for (var i = 0; i < count; i++) {
    total += i;
  }

  print(total);
}
