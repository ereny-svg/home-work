import 'dart:io';

void main() {
  int size = 3;
  List<int> numbers = [];
  print("Enter three numbers");
  for (int i = 0; i < size; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  int sum = 0;
  for (var nums in numbers) {
    sum = sum + nums;
  }
  print(sum);
  num avg = sum / size;
  print(avg);
  if (avg > 50) {
    print("Yes");
  } else {
    print("No");
  }
}
