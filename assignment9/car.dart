class Car {
  String _brand = "";
  int _year = 0;
  String get brand => _brand;
  int get year => _year;
  set brand(String value) {
    if (value.isEmpty) {
      print("Invalid brand");
    } else {
      _brand = value;
    }
  }
  set year(int value) {
    if (value < 1886) {
      print("Invalid year");
    } else {
      _year = value;
    }
  }
}