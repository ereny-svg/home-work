void main() {
  Solution sol = Solution();
  print(sol.containsDuplicate([1, 2, 3, 4]));
}

class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> numbers = nums.toSet();
    if (nums.length != numbers.length) {
      return true;
    } else {
      return false;
    }
  }
}
