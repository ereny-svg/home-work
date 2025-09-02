void main() {
  List<int> numbers = [5, 10, 15, 20, 25];
  int sum = 0;
  for (var num in numbers) {
    sum += num;
  }
  num avg = sum / (numbers.length);
  print(avg);
}
