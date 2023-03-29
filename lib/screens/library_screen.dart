import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/widgets/library_tobar.dart';
import 'package:flutter_spotify/widgets/music_tile.dart';

import '../data/dummy_data.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const LibraryTopBar(),
              const SizedBox(
                height: 35,
              ),
              Expanded(
                child: ListView(
                    children: List.generate(10, (index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.accents[index],
                      maxRadius: 30,
                    ),
                    title: Text(
                      artistDetails[index].title,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    subtitle: const Text(
                      'Artist',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                })),
              )
            ],
          )),
    );
  }
}
