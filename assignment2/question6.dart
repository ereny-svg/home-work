void main() {
  List<String> animals = ["Lion", "Horse", "Cat"];
  animals.add("Dog");
  animals.removeLast();
  animals[1] = "Donkey";
  print(animals.first);
  print(animals.last);
  print(animals.length);
}
