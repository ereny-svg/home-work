void main() {
  String price = "EGP 12.50";
  String num = '';
  for (int i = 4; i < price.length; i++) {
    num = num + price[i];
  }
  print(num);
}
