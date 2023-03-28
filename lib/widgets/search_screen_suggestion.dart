import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../data/dummy_data.dart';
import '../data/dummy_data.dart';

class SearchscreenSuggestion extends StatelessWidget {
  SearchscreenSuggestion({super.key});

  @override
  Widget build(BuildContext context) {
    const List title = searchSuggestionTileTitle;
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      childAspectRatio: 3 / 2,
      children: List.generate(16, (index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.accents[index],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text(
              title[index],
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        );
      }),
    );

    // ListView.separated(
    //   itemCount: 10,
    //   separatorBuilder: (ctx, index) {
    //     return const SizedBox(
    //       height: 10,
    //     );
    //   },
    //   itemBuilder: (ctx, index) {
    //     return const ListTile(

    //       title: Text(
    //         'Hi aLL',
    //         style: TextStyle(color: Colors.white),
    //       ),
    //     );
    //   },
    // );
  }
}
