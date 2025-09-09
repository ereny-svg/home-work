import 'dart:io';

void main() {
  print("Enter a sentence:");
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.split(" ").where((w) => w.isNotEmpty).toList();
  String shortest = words[0];
  String longest = words[0];

  for (var word in words) {
    if (word.length < shortest.length) {
      shortest = word;
    }
    if (word.length > longest.length) {
      longest = word;
    }
  }

  print("Shortest word: $shortest");
  print("Longest word: $longest");
}
