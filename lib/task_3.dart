class Movie {
  final String title;
  final String studio;
  final String rating;

  Movie(this.title, this.studio, [this.rating = 'PG']);

  static List<Movie> getPG(List<Movie> movies) {
    return movies.where((movie) => movie.rating.contains('PG')).toList();
  }
}

void main() {
  Movie m1 = Movie('Casino Royale', 'Eon Productions', 'PG13');
  Movie m2 = Movie('Finding Nemo', 'Pixar');
  Movie m3 = Movie('Joker', 'Warner Bros.', 'R');

  print('m1 rating: ${m1.rating}');
  print('m2 rating: ${m2.rating}');

  List<Movie> movies = [m1, m2, m3];
  List<Movie> pgMovies = Movie.getPG(movies);

  print('\nMovies with PG rating:');
  for (var movie in pgMovies) {
    print('${movie.title} - ${movie.rating}');
  }
}