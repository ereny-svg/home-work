void main() {
  Temperature temp1 = Temperature(celsius: 36.6);
  print(temp1.toFahrenheit());
}

class Temperature {
  double celsius;
  Temperature({required this.celsius}) {}

  double toFahrenheit() {
    return (celsius * (9 / 5)) + 32;
  }
}
