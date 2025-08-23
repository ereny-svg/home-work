void question17() {
  int x = 30;
  int y = 60;
  int z = 90;
  bool statement1 = x>y;
  bool statement2 = y<z;
  bool statement3 = x==z;
  print(statement1);
  print(statement2);
  print(statement3);
  if (statement1 && statement2 && statement3) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
