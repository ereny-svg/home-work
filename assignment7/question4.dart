void main() {
  Product phone = Product(name: 'redmi', price: 100);
  print(phone.name);
  print(phone.price);

  Product  laptop= Product(name: 'dell');
  print(laptop.name);
  print(laptop.price);
  
}

class Product {
  String? name;
  num price ;
  Product({required this.name, this.price=0}) {}
}
