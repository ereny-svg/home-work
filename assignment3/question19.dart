void main() {
  List<String> names = ['ereny', 'engy', 'ereny'];
  Set<String> uniqueNames = names.toSet();
  Map<String, int> namesMap = {'ereny': 2, 'engy': 1};

  if (namesMap['ereny']! > 1) {
    print("appears more than once");
  }
}
