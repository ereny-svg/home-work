void main() {
  num price = 30;
  String priceString = price.toString();
  print(priceString);
  priceString.padLeft(16, ' ');
  print(priceString);
  print(priceString.length);
}
