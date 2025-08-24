void main() {
  int q = 10;
  int w = 20;
  int e = 30;
  print(q < w && w < e);
  print(w == e || q != e);
  print(q > w && w < e);
  if (q < w && w < e) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
