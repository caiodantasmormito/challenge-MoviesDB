import 'package:dio/dio.dart';
import 'package:movies_db/service/dio_service.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    
    return Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/4/list/1?page=1&api_key=01925135c8d9bb7ff0ae88a4d55b7178',
        headers: {
          'content-type': 'application/json;charset=utf-8',
          'authorization' :
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwMTkyNTEzNWM4ZDliYjdmZjBhZTg4YTRkNTViNzE3OCIsInN1YiI6IjYxZTllYjdmOTQ0YTU3MDA0MzU3ZGExNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.qzCL42OOj8PgbKNpDWJcuvCtGJnkiwLAnFgJ_vfHzyw'
          
        },
      )
    );
  }

}