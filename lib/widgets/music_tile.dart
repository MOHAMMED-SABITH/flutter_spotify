import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../data/dummy_data.dart';

class MusicTile extends StatelessWidget {
  const MusicTile({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        enableInfiniteScroll: true,
        // aspectRatio: 16 / 8,
        viewportFraction: 0.5,
      ),
      items: homeScreenReccomendationImages.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              // width: 200,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Image.network(
                i,
                fit: BoxFit.fill,
              ),
            );
          },
        );
      }).toList(),
    );
    // Column(
    //   children: [
    //     LimitedBox(
    //       maxHeight: 180,
    //       child: ListView(
    //         scrollDirection: Axis.horizontal,
    //         children: List.generate(5, (index) {
    //           return Container(
    //             width: 150,
    //             // height: 150,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20),
    //               image: const DecorationImage(
    //                   image: NetworkImage(
    //                     'https://i0.wp.com/batman-news.com/wp-content/uploads/2022/01/The-Batman-2022-Movie-Poster-01.jpeg?fit=2764%2C4096&quality=80&strip=info&ssl=1',
    //                   ),
    //                   fit: BoxFit.fitHeight),
    //             ),
    //           );
    //         }),
    //       ),
    //     )
    //   ],
    // );
  }
}
