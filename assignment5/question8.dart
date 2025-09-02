import 'dart:io';

void main() {
  int? bonus;
  if (bonus == null) {
    print('No bonus');
  } else if (bonus > 50) {
    print('Big bonus');
  } else {
    print('Small bonus');
  }
}
