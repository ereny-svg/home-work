class Book {
  String _title = "";
  int _pages = 0;
  String get title => _title;
  int get readingTime => _pages * 2;
  set title(String value) {
    if (value.isEmpty) {
      print("Invalid title");
    } else {
      _title = value;
    }
  }
  set pages(int value) {
    if (value <= 0) {
      print("Invalid pages");
    } else {
      _pages = value;
    }
  }
}
