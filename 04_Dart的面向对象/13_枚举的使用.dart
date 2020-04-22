main(List<String> args) {
  final color = Colors.red;

  switch (color) {
    case Colors.red:
      print("red");
      break;
    case Colors.blue:
      print("blue");
      break;
    case Colors.green:
      print("green");
      break;
  }

  print(Colors.values);
  print(Colors.red.index);
}

// 枚举 enum
enum Colors { red, blue, green }
