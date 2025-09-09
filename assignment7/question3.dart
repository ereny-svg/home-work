void main() {
  Person person1 = Person(name: "ereny", age: 20);
  person1.age = 21;
  print(person1.name);
  print(person1.age);
}

class Person {
  String? name;
  int? age;
  Person({required this.name, required this.age}) {}
}
