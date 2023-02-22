import 'package:flutter/material.dart';
import 'package:movies_db/controller/movies_controller.dart';
import 'package:movies_db/repositories/movies_repository_imp.dart';
import 'package:movies_db/service/dio_service_imp.dart';
import 'package:movies_db/widgets/list_movies_card.dart';

import '../models/movies_models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MoviesController _controller =
      MoviesController(MoviesRepositoryImp(DioServiceImp()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                onChanged: _controller.onChanged,
              ),
              const SizedBox(
                height: 16,
              ),
              ValueListenableBuilder<Movies?>(
                valueListenable: _controller.movies,
                builder: (_, movies, __) {
                  return movies != null
                      ? ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: movies.results.length,
                          itemBuilder: (_, index) {
                            final result = movies.results[index];
                            return ListMoviesCard(
                              results: result,
                            );
                          },
                          separatorBuilder: (_, __) => const Divider(),
                        )
                      : const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
