import 'dart:io';

void main() {
  print("Enter a number:");
  String numStr = stdin.readLineSync()!;
  int num = int.parse(numStr);

  while (num >= 10) {
    int sum = 0;
    for (var digit in num.toString().split('')) {
      sum += int.parse(digit);
    }
    num = sum;
  }

  print(num);
}