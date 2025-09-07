import 'dart:io';

void main() {
  print("Enter number");
  int num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    var mul = i * num;
    print("number * $i = $mul");
    sum += mul;
  }
  print(sum);
}
