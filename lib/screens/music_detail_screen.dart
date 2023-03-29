import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MusicDetailsScreen extends StatelessWidget {
  const MusicDetailsScreen({super.key});
  static const routeName = '/music-details';
  // final imageUrl;

  @override
  Widget build(BuildContext context) {
    final musicTileDetails =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    // print(musicTileDetails['Details'].album);
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
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
                              image: NetworkImage(musicTileDetails['Images']),
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
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Album:${musicTileDetails['Details'].album}',
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
