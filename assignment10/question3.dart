void main() {}

void check(List<int> numbers, int target) {
  numbers.sort();
  int halfOfTheList = -1;
  if (numbers.length % 2 == 0) {
    halfOfTheList = (numbers.length) ~/ 2;
  } else {
    halfOfTheList = (numbers.length) ~/ 2 + 1;
  }
  if (target == numbers[halfOfTheList]) {
    print(halfOfTheList);
  } else if (target > numbers[halfOfTheList]) {
    numbers.removeRange(0, halfOfTheList);
  } else if (target < numbers[halfOfTheList]) {
    numbers.removeRange(halfOfTheList, numbers.length);
  }
}


// int check(List<int> numbers, int target) {
//   numbers.sort();
//   for (int i = 0; i < numbers.length; i++) {
//     if (numbers[i] == target) {
//       return i;
//     }
//   }
//   return -1;
// }