import 'dart:io';

void main() {
  print("Enter a word");
  String word = stdin.readLineSync()!;
  for (int i = word.length; i > 0; i++) {
    print(word[i]);
  }
  var vowels = {'a', 'e', 'i', 'o', 'u'};
   var vowelCount = word
      .toLowerCase()
      .split('')
      .where((value) => vowels.contains(value))
      .length;

  print(vowelCount);

}
