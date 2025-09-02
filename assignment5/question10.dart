void main() {
  int value = sum(6);
  print('s the sum of all numbers from 1 to 6 : $value');
}

int sum(int num) {
  int sum = 0;
  for (int i = 1; i <= num; i++) {
    sum += i;
  }
  return sum;
}
