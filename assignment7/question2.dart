void main() {
  Car bmw = Car(brand: 'nhytyn', year: 1890);
  print(bmw.brand);
  print(bmw.year);

  Car eee = Car(brand: 'qqqqqq', year: 1800);
  print(eee.brand);
  print(eee.year);
}

class Car {
  String? brand;
  int? year;
  Car({required this.brand, required this.year}) {}
}
