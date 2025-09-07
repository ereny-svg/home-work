import 'dart:io';
import 'dart:math';

void main() {
  var rnd = Random();
  var secret = rnd.nextInt(20) + 1;
  int size = 3;

  for (int i = 1; i <= size; i++) {
    var guess = int.parse(stdin.readLineSync()!);
    if (guess == secret) {
      print('The number was $secret.');
    }
    print('Out of tries. The correct number was $secret.');
  }
}
