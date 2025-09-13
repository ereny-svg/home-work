void main() {
  Course course1 = Course(title: 'python', duration: 4);
  Course course2 = Course(title: 'java');
  print(course1.duration);
  print(course2.duration);
}

class Course {
  String title;
  double duration;
  Course({required this.title, this.duration = 3}) {}
}
