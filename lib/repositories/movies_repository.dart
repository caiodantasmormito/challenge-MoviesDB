import 'package:movies_db/models/movies_models.dart';

abstract class MoviesRepository {

  Future<List<Movies>> getMovies();
}