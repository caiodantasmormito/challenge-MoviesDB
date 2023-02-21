// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../models/movies_models.dart';
import '../utils/api_utils.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailsPage extends StatefulWidget {
  final Results results;
  const DetailsPage({
    Key? key,
    required this.results,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late YoutubePlayerController _playerController;

  @override
  void initState() {
    super.initState();
    _playerController = YoutubePlayerController(
      initialVideoId: 'XFUy4YCgppk',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        isLive: false,
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        widget.results.title,
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .50,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  API.requestImg(widget.results.posterPath),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const CircularProgressIndicator.adaptive();
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Text('Favorite '),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.favorite,
                      size: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                widget.results.overview,
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'Language: ${widget.results.originalLanguage.toUpperCase()}'),
                  Text('Relase data: ${widget.results.releaseDate}')
                ],
              ),
              const Divider(),
              YoutubePlayerBuilder(
                  player: YoutubePlayer(
                    controller: _playerController,
                    showVideoProgressIndicator: true,
                  ),
                  builder: (_, player) => player),
              const SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
