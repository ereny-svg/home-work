void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  int count = 0;
  for (int i = 0; i < names.length; i++) {
    for (int j = 1; j < names.length-1; j++) {
      if (names[i] == names[j]) {
        count++;
      }
    }
    if (count > 1) {
      print(names[i]);
    }
  }
}
