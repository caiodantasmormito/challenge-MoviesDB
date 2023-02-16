import 'package:flutter/material.dart';
import 'package:movies_db/controller/movies_controller.dart';
import 'package:movies_db/repositories/movies_repository_imp.dart';
import 'package:movies_db/service/dio_service_imp.dart';

import '../models/movies_models.dart';

class HomePage extends StatefulWidget {

  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final MoviesController _controller = MoviesController(MoviesRepositoryImp(DioServiceImp()));
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Movies'),),
           body:  ValueListenableBuilder<Movies?>(valueListenable: _controller.movies, 
           builder: (_, movies, __) {
            return movies != null 
            ? ListView.builder(itemCount: movies.results.length,
              itemBuilder: (_, idx) => 
            Text(movies.results[idx].title, style: const TextStyle(color: Colors.red),),) 
            : Container();},)
       );
  }
}