void main() {
  int birthYear = 2004;
  int myAge = calculateTheAge(birthYear);
  print('You are $myAge years old');
}

int calculateTheAge(int birthYear) {
  return 2025 - birthYear;
}
