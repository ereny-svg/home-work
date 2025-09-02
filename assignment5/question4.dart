void main() {
  Map<String, int> studentInformation = {'ereny': 60, 'ero': 95, 'engy': 90};
  int highestMark = -1;
  String name = ' ';
  for (var entry in studentInformation.entries) {
    if (entry.value > highestMark) {
      highestMark = entry.value;
      name = entry.key;
    }
  }
  print('The name of the student with the highest mark: $name');
}
