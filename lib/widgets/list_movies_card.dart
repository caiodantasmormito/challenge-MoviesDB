// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:movies_db/models/movies_models.dart';
import 'package:movies_db/utils/api_utils.dart';

class ListMoviesCard extends StatelessWidget {
  final Results results;
  const ListMoviesCard({
    Key? key,
    required this.results,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: const BoxDecoration(
        color: Colors.black54,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            API.requestImg(results.posterPath),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    results.title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                  const Spacer(),
                  Text('Popularidade ${results.popularity}'),
                  Text('Votos ${results.voteAverage}')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
