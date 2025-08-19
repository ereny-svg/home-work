void main() {
  List<int> numbers = [4, 4, 5, 6, 6, 7];
  Set<int>numbers2 =numbers.toSet();
  numbers2.add(8);
  print(numbers2);
  numbers2.remove(6);
  print(numbers2);
  print(numbers2.contains(8));
}
