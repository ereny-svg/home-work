void main (){
  int mark = 60;
  String grade;

  if (mark >= 90) {
    grade = 'A';
  } else if (mark >= 80) {
    grade = 'B';
  } else if (mark >= 70) {
    grade = 'C';
  } else {
    grade = 'D';
  }

  switch (grade) {
    case 'A':
      print('Excellent!');
      break;
    case 'B':
      print('Very good!');
      break;
    case 'C':
      print('Good.');
      break;
    case 'D':
      print('Needs improvement.');
      break;
    default:
      print('Invalid grade.');
  }
}
