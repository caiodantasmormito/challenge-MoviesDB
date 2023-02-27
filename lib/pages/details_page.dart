// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../models/movies_models.dart';
import '../utils/api_utils.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailsPage extends StatefulWidget {
  static const routeName = '/detailsPage';

  final Results results;
  const DetailsPage({
    Key? key,
    required this.results,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final List<Results> _listFavorite = [];
  late YoutubePlayerController _playerController;
  final List listTrailers = [];

  @override
  void initState() {
    super.initState();
    if (widget.results.title == 'Spider-Man: No Way Home') {
      _playerController = YoutubePlayerController(
        initialVideoId: 'JfVOs4VSpmA',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Eternals') {
      _playerController = YoutubePlayerController(
        initialVideoId: 'lRrSFvZUgGw',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title ==
        'Shang-Chi and the Legend of the Ten Rings') {
      _playerController = YoutubePlayerController(
        initialVideoId: '8YjFbMbfXaQ',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Black Widow') {
      _playerController = YoutubePlayerController(
        initialVideoId: 'ybji16u608U',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Spider-Man: Far from Home') {
      _playerController = YoutubePlayerController(
        initialVideoId: 'Nt9L1jCKGnE',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Avengers: Endgame') {
      _playerController = YoutubePlayerController(
        initialVideoId: 'TcMBFSGVi1c',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Captain Marvel') {
      _playerController = YoutubePlayerController(
        initialVideoId: '0LHxvxdRnYc',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Ant-Man and the Wasp') {
      _playerController = YoutubePlayerController(
        initialVideoId: 'ZlNFpri-Y40',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Avengers: Infinity War') {
      _playerController = YoutubePlayerController(
        initialVideoId: '6ZfuNTqbHE8',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Black Panther') {
      _playerController = YoutubePlayerController(
        initialVideoId: 'wL4a4MafSjQ',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Thor: Ragnarok') {
      _playerController = YoutubePlayerController(
        initialVideoId: 'UvNnqWLruXA',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Spider-Man: Homecoming') {
      _playerController = YoutubePlayerController(
        initialVideoId: 'rk-dF1lIbIg',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Guardians of the Galaxy Vol. 2') {
      _playerController = YoutubePlayerController(
        initialVideoId: '4-i8nTNSQFI',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Logan') {
      _playerController = YoutubePlayerController(
        initialVideoId: 'KPND6SgkN7Q',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Doctor Strange') {
      _playerController = YoutubePlayerController(
        initialVideoId: 'HSzx-zryEgM',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Guardians of the Galaxy Vol. 2') {
      _playerController = YoutubePlayerController(
        initialVideoId: '4-i8nTNSQFI',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'X-Men: Apocalypse') {
      _playerController = YoutubePlayerController(
        initialVideoId: 'COvnHv42T-A',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Captain America: Civil War') {
      _playerController = YoutubePlayerController(
        initialVideoId: 'dKrVegVI0Us',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Deadpool') {
      _playerController = YoutubePlayerController(
        initialVideoId: 'ONHBaC-pfsk',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Fantastic Four') {
      _playerController = YoutubePlayerController(
        initialVideoId: '_rRoD28-WgU',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    } else if (widget.results.title == 'Ant-Man') {
      _playerController = YoutubePlayerController(
        initialVideoId: 'pWdKf3MneyI',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          isLive: false,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isFavorite = _listFavorite.contains(widget.results);
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
                child: Hero(
                  tag: widget.results.id,
                  child: Image.network(
                    API.requestImg(widget.results.posterPath),
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const CircularProgressIndicator.adaptive();
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Text('Favorite '),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isFavorite) {
                          _listFavorite.remove(widget.results);
                        } else {
                          _listFavorite.add(widget.results);
                        }
                      });
                    },
                    child: isFavorite
                        ? const Icon(
                            Icons.favorite,
                            size: 16,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite,
                            size: 16,
                            color: Colors.white,
                          ),
                  )
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
