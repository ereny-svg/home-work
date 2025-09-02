import 'dart:io';

void main() {
  print("Enter size of the list:");
  int size = int.parse(stdin.readLineSync()!);
  List<int> nums = [];
  for (int i = 0; i < size; i++) {
    print("Enter number ${i + 1}:");
    int num = int.parse(stdin.readLineSync()!);
    nums.add(num);
  }
    print("Enter target:");
  int target = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] < target) {
      int y = target - nums[i];
      for (int j = i+1; j < nums.length; j++) {
        if (nums[j] == y) {
          print([i,j]);
        }
      }
    }
  }
}


class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      int y = target - nums[i];
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[j] == y) {
          return [i, j];
        }
      }
    }
    return [];
  }
}

