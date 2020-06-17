main(List<String> args) {
  
  Future.value("Hello World").then((value) => print(value));

  Future.error("error !!!").catchError((error) {
    print(error);
  });

  Future.delayed(Duration(seconds: 3), () {
    return "Hello";
  }).then((res) {
    print(res);
    return "Wolrd";
  }).then((res) {
    print(res);
  });
}
