import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:movies_db/repositories/movies_repository.dart';

import '../models/movies_models.dart';

class MoviesController {

  final MoviesRepository _moviesRepository;

  MoviesController(this._moviesRepository) {
    fetch();
  }

 ValueNotifier<List<Movies?>> movies = ValueNotifier<List<Movies?>>([]);

fetch() async {
  movies.value = await _moviesRepository.getMovies();
}
}