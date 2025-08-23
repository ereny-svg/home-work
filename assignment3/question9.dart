void main() {
  List<String> items = ['orange','apple', 'apple'];
  Set<String> unique = Set.from(items);
  print(items.length);
  print(unique.length);
  if (items.length != unique.length) {
    print('Duplicates were removed');
  }
}