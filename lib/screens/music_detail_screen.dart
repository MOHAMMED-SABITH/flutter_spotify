import 'dart:ui';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/music_tile.dart';

class MusicDetailsScreen extends StatefulWidget {
  const MusicDetailsScreen({super.key});
  static const routeName = '/music-details';

  @override
  State<MusicDetailsScreen> createState() => _MusicDetailsScreenState();
}

class _MusicDetailsScreenState extends State<MusicDetailsScreen> {
  // final imageUrl;
  bool _isPlaying = true;
  bool _audioPlaying = true;
  final assetsAudioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    final musicTileDetails =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    // print(musicTileDetails['Details'].album);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  stops: [0.0, 0.8],
                  colors: [
                    Color.fromARGB(255, 57, 141, 59),
                    Colors.black,
                  ],
                ),
              ),
              // child: Scaffold(
              //   backgroundColor: Colors.transparent,
              //   body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BackButton(
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Container(
                            width: 230,
                            height: 230,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      NetworkImage(musicTileDetails['Images']),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Title:${musicTileDetails['Details'].title}',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Album:${musicTileDetails['Details'].album}',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'spotify',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.heart_broken,
                            color: Colors.white,
                            size: 35,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 35,
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              setState(
                                () {
                                  _isPlaying = !_isPlaying;
                                },
                              );
                              if (_isPlaying == false) {
                                if (_audioPlaying == true) {
                                  assetsAudioPlayer.open(
                                    Audio("assets/musics/Kesariya .mp3"),
                                  );
                                }
                                assetsAudioPlayer.play();
                              }
                              if (_isPlaying == true) {
                                assetsAudioPlayer.pause();
                              }
                              _audioPlaying = false;
                            },
                            child: CircleAvatar(
                              maxRadius: 25,
                              backgroundColor: Colors.green,
                              child: Icon(
                                _isPlaying == true
                                    ? Icons.play_arrow
                                    : Icons.pause,
                                color: Colors.black,
                                size: 35,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        // controller: _scrollController,
                        children: List.generate(
                          7,
                          (index) {
                            return ListTile(
                              leading: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  // color: Colors.amber
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        homeScreenReccomendationImages[index],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              title: Text(
                                artistDetails[index].title,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              subtitle: Text(
                                artistDetails[index].artist,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              trailing: const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 30,
                              ),
                            );
                          },
                          // SizedBox(height: 10,)
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
