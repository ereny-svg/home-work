import 'dart:io';

void main() {
  print("Enter a sentence:");
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.split(' ');
  int countUnique = 0;
  for (var word in words) {
    if (words.where((w) => w == word).length == 1) {
      print(word);
      countUnique++;
    }
  }
  print(countUnique);
}
