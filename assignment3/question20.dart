void main() {
  int age = 19;
  bool hasParent = true;
  String area = 'restricted';

  if (age < 18 && !hasParent) {
    print('Access denied: No parent.');
    return;
  }

}