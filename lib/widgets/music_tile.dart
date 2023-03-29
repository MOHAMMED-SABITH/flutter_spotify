import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/screens/music_detail_screen.dart';

import '../data/dummy_data.dart';

const artistDetails = lofihiphopMusic;

class MusicTile extends StatelessWidget {
  MusicTile({super.key, required this.sharingImages, this.bottmContain});

  final sharingImages;
  final bottmContain;

  @override
  Widget build(BuildContext context) {
    final madeForUImages = sharingImages;

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
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(MusicDetailsScreen.routeName, arguments: {
                        'Images': madeForUImages[index],
                        'Details': artistDetails[index],
                      });
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
                            child: bottmContain
                            // Stack(
                            //   children: [
                            //     Container(
                            //       width: 160,
                            //       height: 50,
                            //       decoration: BoxDecoration(
                            //           color:
                            //               Colors.accents[0].withOpacity(0.5)),
                            //     ),
                            //     Padding(
                            //       padding: const EdgeInsets.all(10),
                            //       child: Text(
                            //         madeForYouTitle[0],
                            //         style: const TextStyle(
                            //             fontSize: 25,
                            //             fontWeight: FontWeight.bold,
                            //             color: Colors.white),
                            //       ),
                            //     )
                            //   ],
                            // ),
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
