void main() {
  String grade;
  int mark = 80;
  if (mark > 80) {
    print("A");
    grade='A';
  } else if (mark > 70) {
    print("B");
    grade='B';
  } else if (mark > 60 || mark > 50) {
    print("C");
    grade='C';
  } else {
    print("D");
    grade='D';
  }

  switch (grade) {
    case "A":
      print("very very very good");
      break;
    case "B":
      print("very very good");
      break;
    case "C":
      print("very good");
      break;
    default :
      print("very good");
      
  }
}
