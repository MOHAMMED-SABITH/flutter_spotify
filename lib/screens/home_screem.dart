import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/widgets/header_text.dart';
import 'package:flutter_spotify/widgets/music_tile.dart';

import '../data/dummy_data.dart';
import '../widgets/homescreen_reccomendation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const HeaderText(heading: 'Made for You'),
              const SizedBox(
                height: 20,
              ),

              const MusicTile(),
              // Container(
              //   width: 150,
              //   height: 250,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     image: DecorationImage(
              //       image: NetworkImage(
              //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSnB8WwXLKD1sM_6DPDv-5UC31TM2Hf-PpZw&usqp=CAU'),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
