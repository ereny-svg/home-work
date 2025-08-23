void main() {
  List<int>? scores = [60,30,90];
  if (scores == null || scores.isEmpty) {
    print('No scores');
  } else {
    int sum = scores.first + scores.last;
    print(sum);
    if (sum >= 40) {
      print('Passed threshold');
    }
  }
}