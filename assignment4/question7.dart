void main() {
  List<int> score = [10, 0, 20, 30];
  double sum = 0;
  for (int i = 0; i < score.length; i++) {
    if (score[i] % 10 == 0 || score[i] == 0) {
      sum += score[i] / 10;
    }
  }
  print(sum);
}
