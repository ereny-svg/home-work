import 'bank.dart';
void main() {
  var account = BankAccount();
  account.balance = 100;
  print(account.balance);
  account.balance = -50;
}