import 'package:flutter/cupertino.dart';
import 'package:movies_db/repositories/movies_repository.dart';

import '../models/movies_models.dart';

class MoviesController {
  final MoviesRepository _moviesRepository;

  MoviesController(this._moviesRepository) {
    fetch();
  }

  ValueNotifier<Movies?> movies = ValueNotifier<Movies?>(null);
  Movies? _cachedMovies;

  onChanged(String value) {
    List<Results> list = _cachedMovies!.results
        .where(
          (e) => e.toString().contains((value)),
        )
        .toList();
        movies.value = movies.value!.copyWith(results: list);
  }

  fetch() async {
    movies.value = await _moviesRepository.getMovies(); 
    _cachedMovies = movies.value;
  }
}
