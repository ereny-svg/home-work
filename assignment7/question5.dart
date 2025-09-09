import 'dart:io';

void main() {
  int size = 6;
  List<int> numbers = [];
  for (int i = 0; i < size; i++) {
    print("enter number ${i + 1} ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  int maxNumber = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > maxNumber) {
      maxNumber = numbers[i];
    }
  }
  numbers.remove(maxNumber);

  int secondMaxNumber = numbers[0];
  for (int i = 1; i < numbers.length-1; i++) {
    if (numbers[i] > secondMaxNumber) {
      secondMaxNumber = numbers[i];
    }
  }
  print(maxNumber);
  print(secondMaxNumber);
}
