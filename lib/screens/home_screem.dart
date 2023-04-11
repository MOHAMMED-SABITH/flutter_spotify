import 'package:flutter/material.dart';
import 'package:flutter_spotify/widgets/header_text.dart';
import 'package:flutter_spotify/widgets/music_tile.dart';

import '../data/dummy_data.dart';
import '../widgets/homescreen_reccomendation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var indexData;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'Good Afternoon',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 35,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.access_time,
                        color: Colors.white,
                        size: 35,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 35,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const HomeScreenReccomendation(),
              const SizedBox(
                height: 20,
              ),
              const HeaderText(
                heading: 'Made for You',
              ),
              const SizedBox(
                height: 20,
              ),
              // NotificationListener<IndexProvider>(
              //   onNotification: (notification) {
              //     print(notification.index);
              //     // if (notification.index == null) {
              //     //   return true;
              //     // }
              //     indexData = notification.index;
              //     // setState(() {
              //     //   // if (notification.index == null) {
              //     //   //   return;
              //     //   // }
              //     //   indexData = notification.index;
              //     // });
              //     return true;
              //   },
              //   child:
              MusicTile(
                  section: 'madeforyou',
                  sharingImages: madeForYouImages,
                  bottmContain: madeForYouTitle),

              const SizedBox(
                height: 20,
              ),
              const HeaderText(heading: 'Based on your recent listening'),
              const SizedBox(
                height: 20,
              ),
              MusicTile(sharingImages: recentListening),
              const SizedBox(
                height: 20,
              ),
              const HeaderText(heading: 'Recently played'),
              const SizedBox(
                height: 20,
              ),
              MusicTile(sharingImages: recentlyPlayed),
              const SizedBox(
                height: 20,
              ),
              const HeaderText(heading: 'India\'s Best'),
              const SizedBox(
                height: 20,
              ),
              MusicTile(sharingImages: IndiaBest),
              const SizedBox(
                height: 20,
              ),
              const HeaderText(heading: 'Your top mixes'),
              const SizedBox(
                height: 20,
              ),
              MusicTile(sharingImages: yourTopMixes),
              const SizedBox(
                height: 20,
              ),
              const HeaderText(heading: 'Best of artists'),
              const SizedBox(
                height: 20,
              ),
              MusicTile(sharingImages: bestOfArtist),
              const SizedBox(
                height: 20,
              ),
              const HeaderText(heading: 'More of what you like'),
              const SizedBox(
                height: 20,
              ),
              MusicTile(sharingImages: whatYouLike),
              const SizedBox(
                height: 20,
              ),
              const HeaderText(heading: 'Recommended for today'),
              const SizedBox(
                height: 20,
              ),
              MusicTile(sharingImages: recommendToday),
            ],
          ),
        ),
      ),
    );
  }
}
