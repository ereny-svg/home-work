import 'dart:io';

void main() {
  print("Enter number");
  int num = int.parse(stdin.readLineSync()!);
  int count = 0;
  for (int i = 1; i <= num; i++) {
    if (i % 2 != 0) {
      print(i);
      count++;
    }
  }
  print(count);
}
