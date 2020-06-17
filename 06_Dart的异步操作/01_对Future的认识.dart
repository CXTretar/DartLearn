import 'dart:io';

main(List<String> args) {
  print("------- start -------");

  var future = getNetworkData();
  print(future);

  // 2.拿到结果(dynamic)
  // then后面的回调函数什么时候被执行?
  // 需要在Future(函数)有结果, 才执行下面的回调函数
  future.then((String value) {
    print(value);
  }).catchError((error) {
    print("捕获错误信息 $error");
  }).whenComplete((){
    print("运行完成!");
  });

  print("-------  end  -------");
}

// 模拟网络请求
// String getNetworkData() {
//   sleep(Duration(seconds: 2));
//   return "Hello World";
// }

Future<String> getNetworkData() {
  // 1.将耗时的操作包裹到Future的回调函数中
  // 1> 只要有返回结果, 那么就执行Future对应的then的回调(Promise-resolve)
  // 2> 如果没有结果返回(有错误信息), 需要在Future回调中抛出一个异常(Promise-reject)
  return Future<String>(() {
    sleep(Duration(seconds: 2));
    // return "Hello World";
    throw Exception("error test !!!");
  });
}
