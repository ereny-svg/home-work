
 void main() {
  check("mouse", 15);   
  check("iphone");        
}

 void check(String productName, [double? discount]) {
  if (discount != null) {
    print("$productName has discount $discount%");
  } else {
    print("$productName has no discount");
  }
}