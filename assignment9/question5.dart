import 'book.dart';
void main() {
  var book = Book();
  book.title = "python";
  book.pages = 120;
  print("${book.title}, ${book.readingTime}");
}
