void main() {
  List<int> numbers = [1, 2, 3, 4, 1, 4];
  Set<int> nums = numbers.toSet();
  if (nums.length < numbers.length) {
    print("duplicates were removed");
  }else{
    print("duplicates were not removed");
  }
}
