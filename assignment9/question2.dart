import 'car.dart';
void main() {
  var car1 = Car();
  car1.brand = "bmw";
  car1.year = 2020;
  print("${car1.brand}, ${car1.year}");

  var car2 = Car();
  car2.brand = "";
  car2.year = 1800;
}