void main() {
  double price = 30;
  String format = '\$' + price.toStringAsFixed(2).padLeft(8, ' ');

  print(format);
  print(format.length);
}
