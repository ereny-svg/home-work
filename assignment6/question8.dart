import 'dart:io';
import 'dart:math';

void main(){
  print("Enter a number:");
  String n = stdin.readLineSync()!;
  List<int> digits = n.split("").map(int.parse).toList();
  print("Sum : ${digits.reduce((a, b) => a + b)}");
  print("Largest : ${digits.reduce(max)}");
}