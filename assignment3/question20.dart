void main() {
  int age = 19;
  bool hasParent = true;
  String? word;
  if (age < 18) {
    if (hasParent) {
      word = 'general';
    } else {
      word = 'restricted';
    }
  }
  switch (word) {
    case 'general':
      print("True");
      break;
    
    case 'restricted':
      print("False");
      break;
  }
}
