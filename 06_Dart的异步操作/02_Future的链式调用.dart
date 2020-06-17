import 'dart:io';

main(List<String> args) {
  print("------- start -------");

  Future(() {
    sleep(Duration(seconds: 2));
    return "第一次请求结果";
  }).then((value) {
    print(value);
    sleep(Duration(seconds: 2));
    // return "第二次请求结果";
    throw Exception("第二次异常");
  }).then((value) {
    print(value);
    sleep(Duration(seconds: 2));
    return "第三次请求结果";
  }).catchError((error) {
    print(error);
  }).then((value) {
    print(value);
    print("结束");
  });

  print("-------  end  -------");
}
