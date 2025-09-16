import 'product.dart';
void main() {
  var product = Product();
  product.name = "Laptop";
  product.price = 1000;
  print("${product.price}, ${product.discountedPrice}");
  product.price = -20;
}
