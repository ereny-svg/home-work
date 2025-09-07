import 'dart:io';
import 'dart:math';

void main() {
  int size = 5;
  List<int> numbers = [];
  print("Enter five numbers");
  for (int i = 0; i < size; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  print(numbers.reduce(max));
  print(numbers.reduce(min));
  var difference = numbers.reduce(max) - numbers.reduce(min);
  print(difference);
}
