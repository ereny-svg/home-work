import 'dart:io';

void main() {
  print("Enter a sentence:");
  String s = stdin.readLineSync()!;
  List<String> words = s.trim().split(" ");
  print("Words: ${words.length}");
  print("Characters (excluding spaces): ${s.replaceAll(" ", "").length}");
}
