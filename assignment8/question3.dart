void main() {
  List<Movie> movies = [];
  Movie movie1 = Movie(title: 'a', rating: 7.7);
  Movie movie2 = Movie(title: 'b', rating: 4);
  Movie movie3 = Movie(title: 'c', rating: 8.9);
  Movie movie4 = Movie(title: 'd', rating: 1.6);
  movies.addAll([movie1, movie2, movie3, movie4]);
  for (var movie in movies) {
    if (movie.rating! > 7) {
      print(movie.title);
    }
  }
}

class Movie {
  String? title;
  double? rating;
  Movie({required this.title, required this.rating}) {}
}
