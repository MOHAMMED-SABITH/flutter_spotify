import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spotify/screens/music_detail_screen.dart';

import '../data/dummy_data.dart';

const artistDetails = lofihiphopMusic;

class MusicTile extends StatelessWidget {
  MusicTile({
    super.key,
    required this.sharingImages,
    this.bottmContain,
    this.section = '',
  });

  final sharingImages;
  final bottmContain;
  String section;

  @override
  Widget build(BuildContext context) {
    final madeForUImages = sharingImages;

    // AssetsAudioPlayer.newPlayer().open(
    //   Audio("assets/musics/Kesariya .mp3"),
    //   autoStart: true,
    //   showNotification: true,
    // );

    return
        // CarouselSlider(
        //   options: CarouselOptions(
        //     height: 200.0,
        //     enableInfiniteScroll: true,
        //     // aspectRatio: 16 / 8,
        //     viewportFraction: 0.5,
        //   ),
        //   items: homeScreenReccomendationImages.map((i) {
        //     return Builder(
        //       builder: (BuildContext context) {
        //         return Container(
        //           width: MediaQuery.of(context).size.width,
        //           // width: 200,
        //           margin: const EdgeInsets.symmetric(horizontal: 5.0),
        //           child: Image.network(
        //             i,
        //             fit: BoxFit.fill,
        //           ),
        //         );
        //       },
        //     );
        //   }).toList(),
        // );
        Column(
      children: [
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              5,
              (index) {
                // IndexProvider(index).dispatch(context);
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(MusicDetailsScreen.routeName, arguments: {
                        'Images': madeForUImages[index],
                        'Details': artistDetails[index],
                      });
                    
                      // assetsAudioPlayer.playOrPause();
                      // assetsAudioPlayer.play();
                      // assetsAudioPlayer.pause();
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 160,
                          height: 155,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  madeForUImages[index],
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: (section == 'madeforyou')
                              ? Stack(
                                  children: [
                                    Container(
                                      width: 160,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.accents[0]
                                              .withOpacity(0.5)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        bottmContain[index],
                                        style: const TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                )
                              : null,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Artist:${artistDetails[index].title}',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                        Expanded(
                          child: Text(
                            'Artist:${artistDetails[index].album}',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}

// class IndexProvider extends Notification {
//   final int index;
//   IndexProvider(this.index);
// }
