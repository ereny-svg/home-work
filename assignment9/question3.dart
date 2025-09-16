import 'grade.dart';
void main() {
  var grade = Grade();
  grade.score = 75;
  print("${grade.score},${grade.isPass}");
  grade.score = 40;
  print("${grade.score},${grade.isPass}");
  grade.score = 150;
}
