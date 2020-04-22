main(List<String> args) {
  
  const p1 = Person("jack");
  const p2 = Person("jack");
  const p3 = Person("rose");

  print(identical(p1,p2));
  print(identical(p1,p3));

}

class Person {
  final String name;
  // final int age;
  
  const Person(this.name);
  // const Person(this.name, this.age);
}