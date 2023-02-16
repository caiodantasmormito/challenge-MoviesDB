import 'package:flutter/cupertino.dart';
import 'package:movies_db/repositories/movies_repository.dart';

import '../models/movies_models.dart';

class MoviesController {

  final MoviesRepository _moviesRepository;

  MoviesController(this._moviesRepository) {
    fetch();
  }

 ValueNotifier<Movies?> movies = ValueNotifier<Movies?>(null);

fetch() async {
  movies.value = await _moviesRepository.getMovies();
}
}