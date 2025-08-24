void main() {
  List<dynamic> nums = [10, 20, 30];
  if (nums.isEmpty) {
    print("No Scores");
  }
  print(nums[0] + nums[2]);
  if (nums[0] + nums[2] >= 40) {
    print("Yes");
  } else {
    print("No");
  }
}
