void main() {
  Calculator sum = Calculator(num1: 5, num2: 6);
  sum.addNumbers();
}

class Calculator {
  int? num1;
  int? num2;
  Calculator({required this.num1, required this.num2}) {}
  void addNumbers() {
    int sum = num1! + num2!;
    print(sum);
  }
}
