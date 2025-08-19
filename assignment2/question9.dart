void main() {
  List<Map<String, dynamic>> students = [
    {'name': 'Ereny', 'grade': 95},
    {'name': 'Engy', 'grade': 100}
  ];
  print(students[1]['grade']);
  int sum = students[0]['grade'] + students[1]['grade'];
  double average = sum / 2;
  print('Average : $average');
}
