void main() {
  NumberCheck number = NumberCheck(value: 5);
  print(number.isEven());
}

class NumberCheck {
  int value;
  NumberCheck({required this.value}) {}
  bool isEven() {
    if (value % 2 == 0) {
      return true;
    } else {
      return false;
    }
  }
}
