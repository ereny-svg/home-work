void main() {
  Map<String, dynamic> book = {
    'title': 'Dart Guide',
    'pages': 60,
    'price': 200
  };
  print(book['title']);
  book['price'] = 140;
  book['author'] = 'Ereny';
  print(book.keys);
  print(book.values);
  print(book.containsKey('pages'));
}
