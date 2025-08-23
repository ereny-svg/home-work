void question12() {
  double price = 180;
  bool isStudent = true;
  bool hasCoupon = false;

  if (price > 100) {
    if (isStudent) {
      price *= 0.85;
    } else if (hasCoupon) {
      price *= 0.9;
    } else {
      price *= 0.95;
    }
  }

  print(price.toStringAsFixed(2));
}