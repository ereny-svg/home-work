class BankAccount {
  double _balance = 0;
  double get balance => _balance;
  set balance(double value) {
    if (value < 0) {
      print("Invalid balance");
    } else {
      _balance = value;
    }
  }
}