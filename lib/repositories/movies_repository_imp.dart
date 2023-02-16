import 'package:movies_db/models/movies_models.dart';
import 'package:movies_db/repositories/movies_repository.dart';
import 'package:movies_db/service/dio_service.dart';

import '../utils/api_utils.dart';

class MoviesRepositoryImp implements MoviesRepository{

final DioService _dioService;

  MoviesRepositoryImp(this._dioService);

  @override


  Future<Movies> getMovies() async {
    
    var result = await _dioService.getDio().get(API.requestMovieList);
    return Movies.fromJson(result.data);
  }

}