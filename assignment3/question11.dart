void main() {
  bool isStudent = true;
  bool hasCoupon = true;
  double discount = 0.75;
  num price = 500;
  if (price < 200) {
    print(price);
  } else if (isStudent) {
    if (!hasCoupon) {
      price = price;
      print(price);
    } else if (hasCoupon) {
      price = price - (price * discount);
       print(price);
    }
  }
}
