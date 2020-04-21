main(List<String> args) {
  // 1. 列表List
  var names = ["abc", "jack", "rose", "rose"];
  names.add("efg");
  print("list $names");
  // 2. 集合Set 元素不能重复
  var address = {"厦门", "福州", "泉州"};
  var namesSet = Set.from(names);
  print("new $namesSet type is ${namesSet.runtimeType}");
  names = Set<String>.from(names).toList();
  print("new $names type is ${names.runtimeType}");

  // 3. 映射Map
  var info = {
    "name": "jack",
    "age": 18,
    "height": 1.74,
  };
}
