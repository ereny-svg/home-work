import 'dart:io';

void main() {
  List<int> nums = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int maxNum = nums.reduce((a, b) => a > b ? a : b);
  int minNum = nums.reduce((a, b) => a < b ? a : b);
  print(maxNum);
  print(minNum);
  print(maxNum - minNum);

  double avg = nums.reduce((a, b) => a + b) / nums.length;
  print(avg);

  for (var n in nums) {
    if (n > avg)
    {
      print(n);
    }
  }

  int even = 0, odd = 0;
  for (var n in nums) {
    if (n % 2 == 0) {
      even++;
    } else {
      odd++;
    }
  }
  print("Even: $even, Odd: $odd");
}
